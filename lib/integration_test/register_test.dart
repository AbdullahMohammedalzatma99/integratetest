import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integratetest/const_key/const_keys.dart';
import 'package:integration_test/integration_test.dart';
import 'package:integratetest/main.dart' as app;
void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("group_auth", () {
    testWidgets("MyRegister", (tester) async {
app.main();
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(
          find.byKey(ConstKey.Email), "abdullah@gmail.com");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Name), "abd");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.enterText(find.byKey(ConstKey.Password), "123");
      await tester.pumpAndSettle(const Duration(seconds: 1));
      await tester.testTextInput.receiveAction(TextInputAction.done);

      // await tester.pumpAndSettle(const Duration(seconds: 1));
      // await tester.press(find.byKey(ConstKey.SingUp));
      // await tester.pumpAndSettle(const Duration(seconds: 1));
    });
  });
}