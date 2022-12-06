import 'package:controle_de_mercado_vesao_local/app/features/sign_up/sign_up_state.dart';
import 'package:controle_de_mercado_vesao_local/app/services/auth_service.dart';
import 'package:flutter/material.dart';

class SignUpController extends ChangeNotifier {
  final AuthService _service;
  SignUpController(this._service);
  late SignUpState _state = SignUpInitialState();

  SignUpState get state => _state;

  void _updateState(SignUpState newState) {
    _state = newState;
    notifyListeners();
  }

  Future<void> doSignUp({
    required String name, 
    required String email, 
    required String password
    }) async {
    _updateState(SignUpLoadingState());
    try {
      _service.signUp(
        name: name,
        email: email,
        password: password,
      );
      throw Exception('Erro ao cadastrar');
      //_updateState(SignUpSucessState());
    } catch (e) {
      _updateState(SignUpErrorState(e.toString()));
    }
  }
}
