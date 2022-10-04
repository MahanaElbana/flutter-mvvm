import 'package:flutter_mvvm/model/post_model.dart';
import 'package:flutter_mvvm/repository/posts/post_repository.dart';

class PostViewModel {
  var titleStatic = 'posts';
  PostRepository postRepository;
  PostViewModel({required this.postRepository});

  Future<List<PostsViewModel>> fetchAllPosts() async {
    List<PostModel> postModels = await postRepository.getAllPosts();
    return postModels.map((e) => PostsViewModel(postModel: e)).toList();
  }
}

class PostsViewModel {
  PostModel? postModel;
  PostsViewModel({required this.postModel});
  get id => postModel?.id;
  get userId => postModel?.userId;
  get title => postModel?.title?.toUpperCase();
  get com => postModel?.completed;
}
