import 'package:eternal_return/screen/item_page.dart';
import 'package:eternal_return/screen/main_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Drawer 메뉴 추가 예정이기에 따로 위젯 추출
class DrawerWidget extends StatelessWidget{
  // 선택한 화면 인덱스
  final int index;

  const DrawerWidget({
    super.key,
    required this.index
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        //UserAccountsDrawerHeader는 불필요하기에 이미지로 대체
        Container(
          height: 180,
          // color: const Color.fromRGBO(153, 153, 153, 1.0),
          child: const Image(
              image: AssetImage("assets/Eternal_Return_background.png",
              ),alignment: Alignment.topCenter,
          ),
        ),
        Column(
          children: [
            // 대메뉴
            Container(
              width: double.maxFinite,
              color: Colors.black87,
              padding: const EdgeInsets.all(5),
              child: const Text(
                "게임 정보",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            // 소메뉴 실험체
            ListTile(
              leading: const Icon(Icons.account_box),
              // index를 통해 선택한 화면의 텍스트 weight 수정
              title: Text("실험체", style: TextStyle(fontWeight: index==0 ? FontWeight.bold : FontWeight.normal)),
              onTap: () {
                // pushandremove로 화면 이동 시 이전 화면 제거
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) => const MainPage()), (route) => false);
              },
            ),
            // 소메뉴 아이템
            ListTile(
              leading: const Icon(Icons.sports_mma),
              // index를 통해 선택한 화면의 텍스트 weight 수정
              title: Text("아이템", style: TextStyle(fontWeight: index==1 ? FontWeight.bold : FontWeight.normal)),
              onTap: () {
                // pushandremove로 화면 이동 시 이전 화면 제거
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                    builder: (context) => const ItemPage()), (route) => false);
              },
            )
          ],
        ),
      ],
    );
  }
}