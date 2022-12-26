import 'package:flutter/material.dart';
import 'package:news/dm/TabsResponce.dart';

class TabItem extends StatelessWidget {
  bool isSelcted;
  MyTab tab;

  TabItem(this.isSelcted, this.tab);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff39A552),
          width: 3,
        ),
        borderRadius: BorderRadius.circular(12),
        color: isSelcted ? Color(0xff39A552) : Colors.transparent,
      ),
      child: Text(
        "${tab.name}",
        style: TextStyle(
            fontSize: 22, color: isSelcted ? Colors.white : Colors.green),
      ),
    );
  }
}
