import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:sandbox/next/label_badge.stories.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  goldenTest(
    '${LabelBadgeComponent.name} renders correctly',
    fileName: LabelBadgeComponent.name,
    pumpWidget: $Default.testSetup,
    constraints: const BoxConstraints.expand(
      width: 100,
      height: 100,
    ),
    builder: () => MaterialApp(
      debugShowCheckedModeBanner: false,
      // TODO: inject scope while building scenario
      //  It used to work while working on v4, but seems like
      //  there has been a regression in the past year.
      home: WidgetbookScope(
        state: WidgetbookState(
          root: WidgetbookRoot(children: [LabelBadgeComponent]),
        ),
        child: GoldenTestGroup(
          children: [
            // TODO: make scenarios definition in Story class as well.
            //  users shouldn't write any code in test file.
            LabelBadgeScenario(
              name: 'Default',
              story: $Default,
            ),
          ],
        ),
      ),
    ),
  );
}
