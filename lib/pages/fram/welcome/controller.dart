import 'package:devchat/common/routes/routes.dart';
import 'package:devchat/pages/fram/welcome/state.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {
  WelcomeController();
  final tital = 'devChat';
  final state = WelcomeState();

  @override
  void onReady() {
    super.onReady();
    Future.delayed(
        const Duration(seconds: 03), () => Get.offAllNamed(AppRoutes.Message));
  }
}
