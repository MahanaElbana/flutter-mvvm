
import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/repository/posts/post_repository.dart';

class PostsApi extends PostRepository{
  @override
  Future<PostModel> getAllPosts() {
    // TODO: implement getAllPosts
    throw UnimplementedError();
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