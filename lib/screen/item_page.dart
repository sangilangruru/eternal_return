
import 'package:eternal_return/widget/appbar_widget.dart';
import 'package:eternal_return/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget{
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    // scaffoldKey를 전역으로 안뺼 경우 에러생기므로 뺌
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: scaffoldKey,
      appBar: AppbarWidget(
          scaffoldKey: scaffoldKey, tabname: "아이템"
      ),
      drawer: const SafeArea(
        child: Drawer(
          //Drawer 메뉴 위젯
          child: DrawerWidget(index: 1)
        ),
      ),
    );
  }
}