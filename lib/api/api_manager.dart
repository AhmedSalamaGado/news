import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/dm/TabsResponce.dart';
class ApiManager{
  static String baseUrl="https://newsapi.org/v2/top-headlines";
  static String ApiKey="948ad5fe5c5b4b22a0142258ff15f890";
static Future<TabsResponce>gettabs()async{
  var responce=await http.get(Uri.parse('$baseUrl/sources?'
      'apiKey=$ApiKey'));
  var json=jsonDecode(responce.body);
  TabsResponce tabsResponce=TabsResponce.fromJson(json);
  return tabsResponce;
}
}