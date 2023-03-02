import 'package:get/get.dart';
import 'package:navaneeth_app/app/api/images_provider.dart';
import 'package:get/state_manager.dart';
import '../../../models/image_model.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getImages();
  }

  var images = <ImageModel>[].obs;
  var loading = false.obs;

  PostsProvider _provider = PostsProvider();

  getImages() async {
    loading(true);
    var response = await _provider.getImages();
    print(response.bodyString!);
    if (!response.status.hasError) {
      images.value = imageModelFromJson(response.bodyString!);
    }
    loading(false);
  }
}
