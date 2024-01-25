import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final signupProvider =
    ChangeNotifierProvider<SignupProvider>((ref) => SignupProvider());

class SignupProvider extends ChangeNotifier {
  final TextEditingController name = TextEditingController();

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController cfpassword = TextEditingController();
  bool? isCheckBox = false;

  void checkBoxUpdate(bool val) {
    isCheckBox = val;
    notifyListeners();
  }
}
