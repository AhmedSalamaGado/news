import 'package:flutter/material.dart';
import 'package:news/dm/TabsResponce.dart';
import 'package:news/ui/tab/tab_item.dart';

class TabsList extends StatefulWidget {
  List<MyTab> tab;


  TabsList(this.tab);


  @override
  State<TabsList> createState() => _TabsListState();
}

class _TabsListState extends State<TabsList> {
  int selected =0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: widget.tab.length,
        child: Column(
          children: [
            TabBar(
              onTap:(value) {
                selected=value;
                setState(() {
                });
              },
              isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.tab.map((tab) {
              return TabItem(selected==widget.tab.indexOf(tab), tab);
            }).toList())
          ],
        ));
  }
}
