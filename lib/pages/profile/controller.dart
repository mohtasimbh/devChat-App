import 'package:devchat/common/store/store.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'index.dart';

class ProfileController extends GetxController {
  ProfileController();
  final state = ProfileState();

  Future<void> goLogout() async {
    await GoogleSignIn().signOut();
    await UserStore.to.onLogout();
  }
}
