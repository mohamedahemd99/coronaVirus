import 'package:conditional_builder/conditional_builder.dart';
import 'package:covid_infected_helper/main.dart';
import 'package:covid_infected_helper/screenat/screenat/news/news_provider.dart';
import 'package:covid_infected_helper/screenat/screenat/web_view/web_view_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../model/health_model.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  @override
  void initState() {
    super.initState();
    // Provider.of<NewsProvider>(context, listen: false).getHealth();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<NewsProvider>(context);

    return ConditionalBuilder(
      condition: provider.healthModel!.articles!.isNotEmpty,
      builder: (context) => ListView.separated(
          physics: const BouncingScrollPhysics(),
          itemBuilder: (context, index) =>
              ReusableTest(provider.healthModel!.articles![index], context),
          separatorBuilder: (context, index) => const Divider(
                thickness: 2.0,
              ),
          itemCount: provider.healthModel!.articles!.length),
      fallback: (context) => const Center(child: CircularProgressIndicator()),
    );
  }
}

Widget ReusableTest(Articles article, context) {
  return Padding(
    padding: const EdgeInsets.all(20),
    child: InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebViewScreen(article.url.toString()),
            ));
      },
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  image: NetworkImage('${article.urlToImage}'),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: SizedBox(
              height: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      "${article.title}",
                      style: Theme.of(context).textTheme.bodyText1,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Text(
                    "${article.publishedAt}",
                    style: const TextStyle(color: Colors.grey, fontSize: 15.0),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ),
  );
}
