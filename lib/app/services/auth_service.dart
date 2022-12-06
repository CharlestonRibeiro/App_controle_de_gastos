import 'package:controle_de_mercado_vesao_local/app/models/user_model.dart';

abstract class AuthService {
  Future<UserModel> signUp({
      String? name, 
      required String email, 
      required String password
      });

  Future signIn();

}
