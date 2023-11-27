import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:induk_club_promotion_app_project/src/controllers/page_view_controller.dart';
import 'package:induk_club_promotion_app_project/src/controllers/app_controller.dart';
import 'package:induk_club_promotion_app_project/src/controllers/promotion_controller.dart';
import 'package:induk_club_promotion_app_project/src/data/provider/promotion_api.dart';
import 'package:induk_club_promotion_app_project/src/data/repository/promotion_repository.dart';

class InitBinding implements Bindings {
  @override
  void dependencies() {
    Get.put(AppController());
    Get.put(PageViewController(), permanent: true);
    Get.put(
        PromotionController(
            promotionRepository:
                PromotionRepository(api: PromotionApi(dio: Dio()))),
        permanent: true);
  }
}
