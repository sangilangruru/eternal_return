import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Drawer 메뉴 추가 예정이기에 따로 위젯 추출
class DrawerWidget extends StatelessWidget{

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
              title: const Text("실험체", style: TextStyle(fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            // 소메뉴 아이템
            ListTile(
              leading: const Icon(Icons.sports_mma),
              title: const Text("아이템"),
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}