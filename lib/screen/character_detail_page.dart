import 'package:eternal_return/widget/appbar_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CharacterDetailPage extends StatefulWidget{
  final String id;
  final String name;
  final String img;

  const CharacterDetailPage({
    super.key,
    required this.id,
    required this.name,
    required this.img
  });

  @override
  State<CharacterDetailPage> createState() => _CharacterDetailPageState();
}

class _CharacterDetailPageState extends State<CharacterDetailPage> {
  late SharedPreferences prefs;
  bool isLiked = false;

  // init단계에서 관심 목록 불러오기
  Future initPrefs() async {
    prefs = await SharedPreferences.getInstance();
    final likedCharacter = prefs.getStringList('likedCharacter');

    if (likedCharacter != null && likedCharacter.isNotEmpty && likedCharacter != []) {
      if (likedCharacter.contains(widget.id) == true) {
        setState(() {
          isLiked = true;
        });
      }
    }else{
      await prefs.setStringList('likedCharacter', []);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    initPrefs();
  }

  onHeartTap() async {
    final likedCharacter = prefs.getStringList('likedCharacter');

    if (likedCharacter != null && likedCharacter.isNotEmpty) {
      likedCharacter.remove(widget.id);
    } else {
      likedCharacter!.add(widget.id);
    }

    await prefs.setStringList('likedCharacter', likedCharacter);
    setState(() {
      isLiked = !isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // 디테일 화면 앱바
      appBar: AppBar(
        title: const Text(
          "실험체 정보",
          style: TextStyle(
              color: Colors.white
          ),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white,)
        ),
        actions: [
          IconButton(
            onPressed: () {
              onHeartTap();
            },
            icon: Icon(isLiked ? Icons.favorite : Icons.favorite_outline, color: Colors.red),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        color: Colors.black,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: widget.id,
              child: Image.asset(widget.img)
            ),
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                children: [
                  Text(widget.name, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}