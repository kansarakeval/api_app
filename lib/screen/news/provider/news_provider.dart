import 'package:api_app/screen/news/model/news_model.dart';
import 'package:api_app/util/api_helper.dart';
import 'package:flutter/material.dart';

class NewsProvider with ChangeNotifier {
  String contrySelected = "in";
  NewsModel? newsModel;

  Future<void> getNewsData() async {
    APIHelper apiHelper = APIHelper();
    NewsModel? new1 = await apiHelper.newsApiCall(contrySelected);
    newsModel = new1;
    notifyListeners();
  }

  //contrySelected
  void changCountry(String country) {
    contrySelected = country;
    notifyListeners();
  }
}
