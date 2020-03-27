import 'package:WHOFlutter/generated/l10n.dart';
import 'package:WHOFlutter/listViewPage.dart';
import 'package:flutter/material.dart';

class TravelAdvice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListOfItemsPage(
      youtubeVideoUrl: null,
      title: S.of(context).travelAdvice,
      items: [
        ListItem(
          message: S.of(context).travelAdviceDescription,
        ),
        ListItem(
          message:
              "It is prudent for travellers who are sick to delay or avoid travel to affected areas, in particular for elderly travellers and people with chronic diseases or underlying health conditions…",
        ),
        ListItem(
          message:
              "“Affected areas” are considered those countries, provinces, territories or cities experiencing ongoing transmission of COVID-19, in contrast to areas reporting only imported cases…",
        ),
        ListItem(
          message: "General recommendations for all travellers include…",
        ),
        ListItem(
          titleWidget: EmojiHeader("🧼"),
          message: S.of(context).washHandsFrequently,
        ),
        ListItem(
          titleWidget: EmojiHeader("👄"),
          message: S.of(context).avoidTouchingFace,
        ),
        ListItem(
          titleWidget: EmojiHeader("💪"),
          message: S.of(context).coughingAndSneezing,
        ),
        ListItem(
          titleWidget: EmojiHeader("↔️"),
          message: S.of(context).keepDistance,
        ),
        ListItem(
          titleWidget: EmojiHeader("🍗"),
          message: S.of(context).foodHygiene,
        ),
        ListItem(
          titleWidget: EmojiHeader("😷"),
          message: S.of(context).maskPrerequisites,
        ),
        ListItem(message: S.of(context).returningFromAffectedArea),
        ListItem(
          titleWidget: EmojiHeader("🌡"),
          message: S.of(context).selfMonitor,
        ),
        ListItem(
          titleWidget: EmojiHeader("🌡️"),
          message: S.of(context).thermalScanners,
        ),
        ListItem(
          titleWidget: EmojiHeader("🤒"),
          message: S.of(context).contactHCP,
        ),
      ],
    );
  }
}
