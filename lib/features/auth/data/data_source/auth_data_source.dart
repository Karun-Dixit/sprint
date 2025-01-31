import 'dart:io';

import '../../domain/entity/auth_entity.dart';

abstract interface class IAuthDataSource {
  Future<String> logincustomer(String email, String password);

  Future<void> registercustomer(AuthEntity customer);

  Future<AuthEntity> getCurrentUser();

  Future<String> uploadProfilePicture(File file);
}
