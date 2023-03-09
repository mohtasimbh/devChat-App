// ignore_for_file: non_constant_identifier_names

import 'package:devchat/common/entities/entities.dart';
import 'package:devchat/common/utils/utils.dart';

class ContactAPI {
  static Future<ContactResponseEntity> post_contact() async {
    var response = await HttpUtil().post(
      'api/contact',
    );
    return ContactResponseEntity.fromJson(response);
  }
}
