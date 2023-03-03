import 'package:get/get.dart';
import 'package:navaneeth_app/app/api/images_provider.dart';
import 'package:get/state_manager.dart';
import '../../../models/image_model.dart';

class HomeController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    getImagesFromAPI();
  }

  var images = <ImageModel>[].obs;
  var loading = false.obs;

  final ImagesProvider _provider = ImagesProvider();

  getImagesFromAPI() async {
    loading(true);
    var response = await _provider.getImages();
    if (!response.status.hasError) {
      images.value = imageModelFromJson(response.bodyString!);
    }
    loading(false);
  }
}
