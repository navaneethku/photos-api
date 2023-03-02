import 'package:get/get.dart';

class PostsProvider extends GetConnect {
  Future<Response> getImages() => get('https://jsonplaceholder.typicode.com/photos');
}