import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/repository/posts/post_repository.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class PostsApi extends PostRepository {
  //---   --- --- ---- url of all posts --- ---  ----- // 
  Uri url = Uri.parse('https://jsonplaceholder.cypress.io/todos');
  
  @override
  Future<List<PostModel>> getAllPosts() async {
    try {
      var response = await http.get(url);
      List<Map<String, dynamic>> jsonPosts = convert.jsonDecode(response.body);
      List<PostModel> postsModel =
          jsonPosts.map((e) => PostModel.fromJson(e)).toList();
      return postsModel;
      
    } catch (e) {
      throw Exception('internet is not connected');
    }
  }

  @override
  Future<PostModel> getPostById(int id) {
    // TODO: implement getPostById
    throw UnimplementedError();
  }

  @override
  Future<PostModel> getPostsByUserId(int id) {
    // TODO: implement getPostsByUserId
    throw UnimplementedError();
  }
}
