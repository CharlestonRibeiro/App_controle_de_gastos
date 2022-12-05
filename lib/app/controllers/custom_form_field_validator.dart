class CustomFormFieldValidator {
  CustomFormFieldValidator._();

  static String? validateName(String? value) {
    final nameValidate = RegExp(r'^[a-zA-Z]{2,}(?: [a-zA-Z]+){0,2}$');
    if (value != null && value.isEmpty) {
      return "Campo obrigatório.";
    }
    if (value != null && !nameValidate.hasMatch(value)) {
      return "Dados inválidos. Digite um nome válido";
    }
    return null;
  }

  static String? validateEmail(String? value) {
    final emailValidate = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (value != null && value.isEmpty) {
      return "Campo obrigatório";
    }
    if (value != null && !emailValidate.hasMatch(value)) {
      return "Dados inválidos. Digite um e-mail válido";
    }
    return null;
  }

  static String? validatePassword(String? value) {
    final passwordValidate =
        RegExp(r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
    if (value != null && value.isEmpty) {
      return "Campo obrigatório";
    }
    if (value != null && !passwordValidate.hasMatch(value)) {
      return "Dados inválidos. Digite uma senha válida de no mínimo 8 caracteres.";
    }
    return null;
  }

  static String? confirmValidatePassword(String? first, String? second) {
    if (second != null && second.isEmpty) {
      return "Campo obrigatório";
    }
    if (first != second) {
      return "Dados inválidos. A confirmação é diferente da senha digitada.";
    }
    return null;
  }

  static String? validateNull(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Campo obrigatório.";
    }
    return null;
  }

  static String? validateTitle(String? value) {
    if (value == null || value.trim().isEmpty) {
      return "Campo obrigatório.";
    }
    if (value.trim().length < 3) {
      return 'Favor identificar o título com pelo menos 3 caracteres.';
    }
    return null;
  }
}
