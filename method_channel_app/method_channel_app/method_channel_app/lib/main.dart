import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewmodels/message_viewmodel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MessageViewModel(),
      child: MaterialApp(
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final vm = Provider.of<MessageViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: const Text('MethodChannel MVVM')),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: vm.showToast,
              child: const Text('Mostrar Toast'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: vm.showAlert,
              child: const Text('Mostrar AlertDialog'),
            ),
          ],
        ),
      ),
    );
  }
}
