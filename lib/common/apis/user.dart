// ignore_for_file: non_constant_identifier_names

import 'package:devchat/common/entities/entities.dart';
import 'package:devchat/common/utils/utils.dart';

class UserAPI {
  static Future<UserLoginResponseEntity> Login({
    LoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      'api/login',
      queryParameters: params?.toJson(),
    );
    return UserLoginResponseEntity.fromJson(response);
  }

  static Future<UserLoginResponseEntity> get_profile() async {
    var response = await HttpUtil().post(
      'api/get_profile',
    );
    return UserLoginResponseEntity.fromJson(response);
  }
  static Future<BaseResponseEntity> UpdateProfile({
    LoginRequestEntity? params,
  }) async {
    var response = await HttpUtil().post(
      'api/update_profile',
      queryParameters: params?.toJson(),
    );
    return BaseResponseEntity.fromJson(response);
  }


}
