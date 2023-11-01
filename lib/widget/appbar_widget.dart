import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppbarWidget extends StatelessWidget implements PreferredSizeWidget{
  final scaffoldKey, tabname;

  const AppbarWidget({
    super.key,
    required this.scaffoldKey,
    required this.tabname
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        tabname,
        style: const TextStyle(
            color: Colors.white
        ),
      ),
      backgroundColor: Colors.black,
      centerTitle: true,
      leading: IconButton(
          onPressed: () {
            scaffoldKey.currentState?.openDrawer();
          },
          icon: const Icon(Icons.menu, color: Colors.white,)
      ),
    );
  }

}