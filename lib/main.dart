import 'package:api_app/screen/User/provider/user_provider.dart';
import 'package:api_app/screen/news/provider/news_provider.dart';
import 'package:api_app/util/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => UserProvider(),),
          ChangeNotifierProvider(create: (context) => NewsProvider(),)
        ],
        child: MaterialApp(
          theme: ThemeData(useMaterial3: true),
          debugShowCheckedModeBanner: false,
          routes: app_routes,
        ),
      ),
  );
}
