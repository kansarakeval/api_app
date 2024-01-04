import 'package:api_app/screen/User/provider/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  UserProvider? providerr;
  UserProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<UserProvider>().getUserData();
  }
  @override
  Widget build(BuildContext context) {
    providerr =context.read<UserProvider>();
    providerw =context.watch<UserProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User"),
          centerTitle: true,
        ),
        body:providerw!.userList == null?Center(child: CircularProgressIndicator()): ListView.builder(
          itemCount: providerw!.userList!.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Text("${providerw!.userList![index].id}"),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${providerw!.userList![index].name}"),
                  Text("${providerw!.userList![index].email}"),
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("- ${providerw!.userList![index].companyModel!.catchPhrase}"),
                  Text("  - ${providerw!.userList![index].companyModel!.bs}"),
                ],
              ),
              trailing: Text("${providerw!.userList![index].addressModel!.geoModel!.lat}/${providerw!.userList![index].addressModel!.geoModel!.lng}"),
            );
          },
        ),
      ),
    );
  }
}
