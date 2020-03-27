import 'package:WHOFlutter/generated/l10n.dart';
import 'package:WHOFlutter/listViewPage.dart';
import 'package:flutter/material.dart';

class WhoMythBusters extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListOfItemsPage(
      youtubeVideoUrl: null,
      title: S.of(context).whoMythBusters,
      items: [
        ListItem(
            titleWidget: EmojiHeader("🧠"),
            message: S.of(context).falseInformation),
        ListItem(
          titleWidget: EmojiHeader("🔢"),
          message: S.of(context).vunerableAges,
        ),
        ListItem(
          titleWidget: EmojiHeader("❄️"),
          message: S.of(context).coldWeather,
        ),
        ListItem(
          titleWidget: EmojiHeader("☀️"),
          message: S.of(context).hotClimates,
        ),
        ListItem(
          titleWidget: EmojiHeader("🦟"),
          message: S.of(context).mosquitoBites,
        ),
        ListItem(
          titleWidget: EmojiHeader("🐶"),
          message: S.of(context).petTransmission,
        ),
        ListItem(
          titleWidget: EmojiHeader("🛀"),
          message: S.of(context).hotBath,
        ),
        ListItem(
          titleWidget: EmojiHeader("💨"),
          message: S.of(context).handDryers,
        ),
        ListItem(
          titleWidget: EmojiHeader("🟣"),
          message: S.of(context).ultravoiletLight,
        ),
        ListItem(
          titleWidget: EmojiHeader("🌡️"),
          message: S.of(context).thermalScanners,
        ),
        ListItem(
          titleWidget: EmojiHeader("💦"),
          message: S.of(context).sprayingChemicals,
        ),
        ListItem(
          titleWidget: EmojiHeader("💉"),
          message: S.of(context).pneumoniaVaccines,
        ),
        ListItem(
          titleWidget: EmojiHeader("👃"),
          message: S.of(context).rinsingNose,
        ),
        ListItem(
          titleWidget: EmojiHeader("🧄"),
          message: S.of(context).garlic,
        ),
        ListItem(
          titleWidget: EmojiHeader("💊"),
          message: S.of(context).antibiotics,
        ),
        ListItem(
          titleWidget: EmojiHeader("🧪"),
          message: S.of(context).noMedicine,
        ),
      ],
    );
  }
}
