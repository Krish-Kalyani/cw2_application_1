import 'package:flutter_test/flutter_test.dart';
import 'package:cw2_application_1/main.dart';

void main() {
  testWidgets('Recipe navigation smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const RecipeApp());

    expect(find.text('Pesto Pasta'), findsOneWidget);
    expect(find.text('Tacos'), findsOneWidget);
    expect(find.text('Cookies'), findsOneWidget);

    await tester.tap(find.text('Pesto Pasta'));
    await tester.pumpAndSettle();

    expect(find.text('Ingredients:'), findsOneWidget);
    expect(
        find.text(
            'Pesto, Heavy Cream, Parmesan Cheese, Salt and Pepper, Red Chili Flakes, Pasta'),
        findsOneWidget);
    expect(find.text('Instructions:'), findsOneWidget);
    expect(
        find.text(
            'Boil Pasta, Add store bought pesto, splash of heavy cream, and sprinkle parmesan cheese, salt and pepper, and red chili flakes.'),
        findsOneWidget);
  });
}
