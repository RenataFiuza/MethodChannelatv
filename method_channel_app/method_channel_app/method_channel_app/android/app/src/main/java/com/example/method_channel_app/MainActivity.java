package com.example.method_channel_app;

import android.os.Bundle;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.plugin.common.MethodChannel;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;

public class MainActivity extends FlutterActivity {
  private static final String CHANNEL = "com.example.method_channel_app/messages";
  @Override
  protected void onCreate(Bundle savedInstanceState) {
    super.onCreate(savedInstanceState);
    new MethodChannel(getFlutterEngine().getDartExecutor().getBinaryMessenger(), CHANNEL)
      .setMethodCallHandler((call, result) -> {
        if (call.method.equals("showToast")) {
          String message = call.argument("message");
          if (message == null) message = "";
          Toast.makeText(getApplicationContext(), message, Toast.LENGTH_SHORT).show();
          result.success(null);
        } else if (call.method.equals("showAlert")) {
          String title = call.argument("title");
          String message = call.argument("message");
          if (title == null) title = "";
          if (message == null) message = "";
          runOnUiThread(() -> {
            new AlertDialog.Builder(MainActivity.this)
              .setTitle(title)
              .setMessage(message)
              .setPositiveButton("OK", (dialog, which) -> dialog.dismiss())
              .show();
          });
          result.success(null);
        } else {
          result.notImplemented();
        }
      });
  }
}
