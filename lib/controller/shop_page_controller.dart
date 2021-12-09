import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ShopPageController extends GetxController {
  RxInt selectedCategoryIndex = 0.obs;
  RxInt selectedSubCategoryIndex = 0.obs;
  RxInt bottomNavigationBarIndex = 0.obs;
}
