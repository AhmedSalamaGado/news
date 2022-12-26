import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news/api/api_manager.dart';
import 'package:news/dm/TabsResponce.dart';
import 'package:news/ui/tab/tab_item.dart';
import 'package:news/ui/tab/tabs_list.dart';

class Home extends StatelessWidget {
static String routeName="Home";
int selected=0;
List<TabsResponce>mytab=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Color(0xff39A552),
        title: Text("News App",style: TextStyle(fontSize:22 ,color: Colors.white),),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),
        ),
        toolbarHeight: MediaQuery.of(context).size.height*.1,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: FutureBuilder<TabsResponce>(
          future: ApiManager.gettabs(),
          builder: (_,snapShot){
            if(snapShot.hasError)
              {
                return Text(snapShot.error.toString());
              }
            else if(snapShot.connectionState==ConnectionState.waiting)
              {
                return Center(child: CircularProgressIndicator());
              }
            else
              {
                return TabsList(snapShot.data!.tab!);
              }
          },


        ),
      ),
    );
  }
}
