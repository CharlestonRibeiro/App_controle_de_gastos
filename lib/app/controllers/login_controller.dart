import 'package:controle_de_mercado_vesao_local/app/controllers/login_state.dart';
import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier {
  LoginState loginState = LoginInitialState();

  void updateState(LoginState newState) {
    loginState = newState;
    notifyListeners();
  }

  Future<bool> attemptLogin() async {
    updateState(LoginLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));

      updateState(LoginSuccessState());
      return true;
    } catch (e) {
      updateState(LoginErrorState());
      return false;
    }
  }
}
