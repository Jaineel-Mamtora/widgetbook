import 'package:widgetbook/next.dart';

import 'label_badge.dart';

part 'label_badge.stories.book.dart';

final meta = MetaWithArgs<LabelBadge, NumericBadgeInput>();

final $Default = LabelBadgeStory(
  name: 'Default',
  args: NumericBadgeInputArgs(
    number: const IntArg(1),
  ),
  argsBuilder: (context, args) => LabelBadge(
    text: args.number.resolve(context).toString(),
  ),
  testSetup: (tester, scenario) async {
    await tester.pumpWidget(scenario);

    // TODO: Improve syntax:
    //  1. Provide easy way to find the story widget
    //  2. Provide easy way to find the args values
    final badge = find.text('1');

    await tester.tap(badge);
    await tester.pumpAndSettle();
  },
);

class NumericBadgeInput {
  NumericBadgeInput({
    required this.number,
  });

  final int number;
}
