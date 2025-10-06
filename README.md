# MethodChannelatv
MethodChannel MVVM App

App Flutter que demonstra comunicação entre Flutter e código nativo Android usando MethodChannel.
Funcionalidades
- Mostrar Toast: chama método nativo que exibe um Toast curto.
- Mostrar AlertDialog: chama método nativo que exibe um AlertDialog com título, mensagem e botão OK.

Como executar
1. Clone o repositório.
2. Abra a pasta no VS Code ou Android Studio.
3. Rode: flutter pub get
4. Execute a app em um emulador ou dispositivo Android: flutter run

Estrutura
- lib/main.dart: UI e injeção do ViewModel.
- lib/viewmodels/message_viewmodel.dart: ViewModel que chama MethodChannel.
- android/app/src/main/java/com/example/method_channel_app/MainActivity.java: Implementação Java do MethodChannel.


Licença
Veja LICENSE.md
