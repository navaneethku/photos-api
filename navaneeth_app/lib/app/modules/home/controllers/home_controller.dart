import 'package:get/get.dart';
import 'package:navaneeth_app/app/api/images_provider.dart';
import 'package:get/state_manager.dart';
import '../../../models/image_model.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getPosts();
  }

  var posts = <ImageModel>[].obs;
  var loading = false.obs;

  PostsProvider _provider = PostsProvider();

  getPosts() async {
    loading(true);
    var response = await _provider.getPosts();
    print(response.bodyString!);
    if (!response.status.hasError) {
      posts.value = imageModelFromJson(response.bodyString!);
    }
    loading(false);
  }
}
