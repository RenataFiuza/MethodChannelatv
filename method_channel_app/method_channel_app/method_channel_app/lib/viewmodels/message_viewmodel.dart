import 'package:flutter/services.dart';
import 'package:flutter/material.dart';

class MessageViewModel extends ChangeNotifier {
  static const platform = MethodChannel('com.example.method_channel_app/messages');
  void showToast() async {
    try {
      await platform.invokeMethod('showToast', {'message': 'Mensagem do Flutter via MethodChannel'});
    } catch (e) {}
  }
  void showAlert() async {
    try {
      await platform.invokeMethod('showAlert', {'title': 'Título nativo', 'message': 'Esta é uma mensagem de diálogo nativo'});
    } catch (e) {}
  }
}
