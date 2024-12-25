// lib/repository/news_repository.dart

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../Models/categories_news_model.dart';
import '../Models/news_channels_headlines_model.dart';

class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlineApi(
      String name) async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=$name&apiKey=0e6edb4b702f4f2db337f7e3604919a0";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        return NewsChannelsHeadlinesModel.fromJson(body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<CategoriesNewsModel> fetchCategoriesNewsApi(String category) async {
    String url =
        "https://newsapi.org/v2/everything?q=${category}&apiKey=0e6edb4b702f4f2db337f7e3604919a0";

    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        return CategoriesNewsModel.fromJson(body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
