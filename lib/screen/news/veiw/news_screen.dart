import 'package:api_app/screen/news/provider/news_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  NewsProvider? providerr;
  NewsProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<NewsProvider>().getNewsData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<NewsProvider>();
    providerw = context.watch<NewsProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("User"),
          centerTitle: true,
        ),
        body: providerw!.newsModel == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: providerw!.newsModel!.articlesList!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${providerw!.newsModel!.articlesList![index].sourceModel!.id}"),
                        Text(
                            "${providerw!.newsModel!.articlesList![index].sourceModel!.name}"),
                        Text(
                            "${providerw!.newsModel!.articlesList![index].title}"),
                      ],
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          providerw!
                                  .newsModel!.articlesList![index].urlToImage ??
                              "https://media.istockphoto.com/id/1311148884/vector/abstract-globe-background.jpg?s=2048x2048&w=is&k=20&c=ZyHCcX0F_DVM-r_R_vG8OX_CqYLb-G16afTyaVGtB3o=",
                          width: 100,
                          height: 100,
                        ),
                        Text(
                            "${providerw!.newsModel!.articlesList![index].publishedAt}"),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
