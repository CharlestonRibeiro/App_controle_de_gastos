import 'package:controle_de_mercado_vesao_local/app/models/user_model.dart';
import 'package:controle_de_mercado_vesao_local/app/services/auth_service.dart';

class MockAuthService implements AuthService {
  @override
  Future<UserModel> signIn({
     required String email,
     required String password,
  }) async {
   await Future.delayed(const Duration(seconds: 2));
    try {
      
      if (password.startsWith('123')) {
        throw Exception();
      }
      return UserModel(
        id: email.hashCode, 
        email: email
        );
    } catch (e) {
      if (password.startsWith('123')) {
        throw 'Senha insegura. Digite uma senha forte.';
      }
      throw 'Não foi possível realizar login nesse momento.';
    }
  }

  @override
  Future<UserModel> signUp(
      {String? name, 
      required String email, 
      required String password
      }) async {
        await Future.delayed(const Duration(seconds: 2));
    try {
      
      if (password.startsWith('123')) {
        throw Exception();
      }
      return UserModel(
        id: email.hashCode, 
        name: name, 
        email: email
        );
    } catch (e) {
      if (password.startsWith('123')) {
        throw 'Senha insegura. Digite uma senha forte.';
      }
      throw 'Não foi possível criar sua conta nesse momento.';
    }
  }
}
