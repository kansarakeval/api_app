import 'package:api_app/screen/User/view/user_screen.dart';
import 'package:api_app/screen/home/view/home_screen.dart';
import 'package:api_app/screen/news/veiw/news_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context) => const HomeScreen(),
  'user': (context) => const UserScreen(),
  'news':(context) => const NewsScreen(),
};