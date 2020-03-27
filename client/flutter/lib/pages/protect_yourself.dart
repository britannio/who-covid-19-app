import 'package:WHOFlutter/generated/l10n.dart';
import 'package:WHOFlutter/listViewPage.dart';
import 'package:flutter/material.dart';

class ProtectYourself extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListOfItemsPage(
      youtubeVideoUrl: null,
      title: S.of(context).protectYourself,
      items: [
        ListItem(
          titleWidget: EmojiHeader("🧼"),
          message: S.of(context).washHands,
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
          titleWidget: EmojiHeader("🚷"),
          message: S.of(context).avoidCrowdedPlaces,
        ),
        ListItem(
          titleWidget: EmojiHeader("🏠"),
          message: S.of(context).stayAtHome,
        ),
        ListItem(
          titleWidget: EmojiHeader("🤒"),
          message: S.of(context).symptomActions,
        ),
        ListItem(
          titleWidget: EmojiHeader("ℹ️"),
          message: S.of(context).latestInfoWHO,
        ),
      ],
    );
  }
}
