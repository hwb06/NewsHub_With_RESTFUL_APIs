// lib/View_Model/news_view_model.dart

import '../Models/categories_news_model.dart';
import '../Models/news_channels_headlines_model.dart';
import '../repository/news_repostries.dart';

class NewsViewModel {
  final _rep = NewsRepository();

  Future<NewsChannelsHeadlinesModel> fetchNewsChannelHeadlinesApi(
      String name) async {
    final response = await _rep.fetchNewsChannelsHeadlineApi(name);
    return response;
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    final response = await _rep.fetchCategoriesNewsApi(category);
    return response;
  }
}
