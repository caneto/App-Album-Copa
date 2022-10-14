
import 'package:appalbumcopa/app/models/user_model.dart';

abstract class UserRepository {
  Future<UserModel> getMe();
}