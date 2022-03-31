import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_app/screens/components/loading_overlay.dart';
import 'package:getx_app/screens/posts/components/post_list.dart';
import 'package:getx_app/screens/posts/posts_controller.dart';

class PostScreen extends GetView<PostController> {
  const PostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Posts"),
      ),
      body: Center(
        child: GetBuilder<PostController>(
          builder: (controller) {
            return LoadingOverlay(
              isLoading: controller.isLoading,
              child: ListView.builder(
                itemCount: controller.postList.length,
                itemBuilder: (context, index) =>
                    PostList(post: controller.postList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
