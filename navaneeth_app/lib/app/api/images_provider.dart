import 'package:get/get.dart';

class ImagesProvider extends GetConnect {
  Future<Response> getImages() => get('https://jsonplaceholder.typicode.com/photos');
}