import 'dart:math';

import 'package:devchat/common/entities/entities.dart';
import 'package:devchat/common/routes/names.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'state.dart';

class SignInController extends GetxController {
  SignInController();
  final state = SignInState();
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['openid']);

  Future<void> handleSignIn(String type) async {
    try {
      if (type == 'phone number') {
        print('...you are loging in with phone number...');
      } else if (type == 'google') {
        var user = await _googleSignIn.signIn();
        if (user != null) {
          String? displayName = user.displayName;
          String? email = user.email;
          String? id = user.id;
          String? phototUrl = user.photoUrl ?? 'assets/icons/google.png';
          LoginRequestEntity loginPlaneListRequestEntity = LoginRequestEntity();
          loginPlaneListRequestEntity.avatar = phototUrl;
          loginPlaneListRequestEntity.name = displayName;
          loginPlaneListRequestEntity.email = email;
          loginPlaneListRequestEntity.type = 2;
          asyncPostAllData();
        }
      } else {
        if (kDebugMode) {
          print('...login ttype not sure...');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('...error witth login $e');
      }
    }
  }

  asyncPostAllData() {
    Get.offAllNamed(AppRoutes.Message);
  }
}
