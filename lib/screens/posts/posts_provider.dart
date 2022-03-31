import 'package:getx_app/library/api_request.dart';

import '../../models/post.dart';

class PostProvider {
  void getPostList({
    Function()? beforeSend,
    Function(List<Post> posts)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: "https://jsonplaceholder.typicode.com/posts", data: null)
        .get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSucsses: (data) {
        onSuccess!(
            (data as List).map((postJson) => Post.fromJson(postJson)).toList());
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
