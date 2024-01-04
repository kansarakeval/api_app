import 'package:api_app/screen/User/model/user_model.dart';
import 'package:api_app/util/api_helper.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier
{
  List<UserModel>? userList=[];
  Future<void> getUserData()
  async {
    APIHelper apiHelper=APIHelper();
    List<UserModel>? list = await apiHelper.userApi();
    userList=list;
    notifyListeners();
  }
}