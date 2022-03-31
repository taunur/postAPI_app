// ignore_for_file: avoid_print

import 'package:get/get.dart';
import 'package:getx_app/screens/posts/posts_provider.dart';

import '../../models/post.dart';

class PostController extends GetxController {
  List<Post> postList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostProvider().getPostList(
      beforeSend: () {
        print("before send");
      },
      onSuccess: (posts) {
        postList.addAll(posts);
        print("SUCCES");
        print(posts.length);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("ERROR!");
      },
    );
    super.onInit();
  }
}
