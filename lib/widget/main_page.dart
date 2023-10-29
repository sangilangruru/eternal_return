import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String,String>> character = [
      {
        'name': '리오',
        'img': 'assets/lio.jpg'
      },{
        'name': '하트',
        'img': 'assets/hart.jpg'
      },{
        'name': '아야',
        'img': 'assets/aya.jpg'
      },{
        'name': '아이솔',
        'img': 'assets/aisol.jpg'
      },{
        'name': '나딘',
        'img': 'assets/nadin.jpg'
      }
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "이터널 리턴 가이드",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: _buildList(context, character)
    );
  }

  Widget _buildList(BuildContext context, List<Map<String,String>> result) {
    return GridView.builder(
      itemCount: result.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        crossAxisCount: 4,
      ),
      itemBuilder: (BuildContext context, int index) {
        Map item = result[index];

        return Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              const Padding(padding:EdgeInsets.symmetric(vertical: 10)),
              Image.asset(item["img"], alignment: Alignment.topCenter),
              Text(item["name"]),
            ],
          ),
        );
     },
    );
  }
}