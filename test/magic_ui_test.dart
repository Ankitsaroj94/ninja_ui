import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:magic_ui/magic_ui.dart';


void main() {
  group('Magic UI Package Tests', () {
    test('AppColors primary color should be correct', () {
      expect(AppColors.primary.shade500, equals(Color(0xFF2E90FA)));
    });

    testWidgets('PrimaryIconButton renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryIconButton(
              icon: Icons.add,
              onTap: () {},
            ),
          ),
        ),
      );

      expect(find.byIcon(Icons.add), findsOneWidget);
    });

    testWidgets('PrimaryOutlinedButton renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: PrimaryOutlinedButton(
              label: 'Submit',
              onTap: () {},
            ),
          ),
        ),
      );

      expect(find.text('Submit'), findsOneWidget);
    });

    testWidgets('MagicLoader renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: MagicLoader(size: 30, color: Colors.blue),
          ),
        ),
      );

      expect(find.byType(MagicLoader), findsOneWidget);
    });

    testWidgets('CustomDialog renders correctly', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              return ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => const CustomDialog(child: Text("Test Dialog")),
                  );
                },
                child: const Text('Show Dialog'),
              );
            },
          ),
        ),
      );

      await tester.tap(find.text('Show Dialog'));
      await tester.pump();

      expect(find.text('Test Dialog'), findsOneWidget);
    });
  });
}
