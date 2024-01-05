import 'dart:convert';
import 'package:api_app/screen/User/model/user_model.dart';
import 'package:api_app/screen/news/model/news_model.dart';
import 'package:http/http.dart' as http;

class APIHelper {
  //user
  Future<List<UserModel>?> userApi() async {
    String apiLink = "https://jsonplaceholder.typicode.com/users";
    var response = await http.get(Uri.parse(apiLink));

    if (response.statusCode == 200) {
      List json = jsonDecode(response.body);
      List<UserModel> userList =
          json.map((e) => UserModel.mapToModel(e)).toList();
      return userList;
    } else {
      return null;
    }
  }

  //news
  Future<NewsModel?> newsApiCall(String country) async {
    String apiLink =
        "https://newsapi.org/v2/top-headlines?country=$country&category=business&apiKey=462c7412b507426585d7957aa32af462";

    var response = await http.get(Uri.parse(apiLink));
    if (response.statusCode == 200) {
      var json =jsonDecode(response.body);
      NewsModel newsModel= NewsModel.mapToModel(json);
      return newsModel;
    }
    return null;
  }
}
