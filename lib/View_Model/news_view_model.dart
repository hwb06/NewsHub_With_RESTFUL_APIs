

import 'package:news_app_with_apis/Models/categories_news_model.dart';
import 'package:news_app_with_apis/Models/news_channels_headlines_model.dart';
import 'package:news_app_with_apis/repository/news_repostries.dart';

class NewsViewModel{
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(String name) async{
    final response =  await _rep.fetchNewsChannelsHeadlineApi(name);
    return response;
  }

  //For categories news
  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async{
    final response =  await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
  }