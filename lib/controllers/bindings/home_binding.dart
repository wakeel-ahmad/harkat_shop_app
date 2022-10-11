import 'package:get/get.dart';
import 'package:tourism/controllers/controllers/feed_controller.dart';
import 'package:tourism/data/data.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(FeedController());
    Get.lazyPut<AuthApi>(
      () => AuthApi(),
    );
  }
}
