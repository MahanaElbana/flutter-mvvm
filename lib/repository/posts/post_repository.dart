import 'package:flutter_mvvm/model/post_model.dart';

abstract class PostRepository {
  Future getAllPosts();
  Future<PostModel> getPostById(int id);
  Future<PostModel> getPostsByUserId(int id);
}
