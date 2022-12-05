import 'package:controle_de_mercado_vesao_local/app/features/sign_up/sign_up_state.dart';
import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  SignUpState state = SignUpInitialState();

  void updateState(SignUpState newState) {
    state = newState;
    notifyListeners();
  }

  Future<bool> doSignUp() async {
    updateState(SignUpLoadingState());
    try {
      await Future.delayed(const Duration(seconds: 2));
      throw Exception('Erro ao cadastrar');
      // updateState(SignUpSucessState());
      // return true;
    } catch (e) {
      updateState(SignUpErrorState());
      return false;
    }
  }
}
