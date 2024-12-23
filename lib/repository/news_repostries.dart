import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news_app_with_apis/Models/news_channels_headlines_model.dart';

//For Api
class NewsRepository {
  Future<NewsChannelsHeadlinesModel> fetchNewsChannelsHeadlineApi() async {
    //Make this secret not opened publicly
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=0e6edb4b702f4f2db337f7e3604919a0";

    //Fetch data from api
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return NewsChannelsHeadlinesModel.fromJson(body);
    }
    throw Exception("Error");
  }
}
