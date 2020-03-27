import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ListOfItemsPage extends StatelessWidget {
  final List<ListItem> items;
  final String youtubeVideoUrl;
  final String title;

  const ListOfItemsPage({
    Key key,
    @required this.items,
    @required this.youtubeVideoUrl,
    @required this.title,
  }) : super(key: key);
  // ListOfItemsPage(this.listOfItems);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              // Placeholder for a youtube widget
              flexibleSpace: Placeholder(),
              // 16:9 aspect ratio
              expandedHeight: (MediaQuery.of(context).size.width * 9) / 16,
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontWeight: FontWeight.w800, fontSize: 32),
                      ),
                    ),
                  ),
                  ...items
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _YoutubeVideo extends StatefulWidget {
  _YoutubeVideo({Key key, @required this.videoId}) : super(key: key);

  final String videoId;

  @override
  __YoutubeVideoState createState() => __YoutubeVideoState();
}

class __YoutubeVideoState extends State<_YoutubeVideo> {
  YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: widget.videoId,
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        loop: false,
        // TODO replace with an ISO 639-1 string
        captionLanguage: 'en',
        hideControls: false,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
    );
  }
}

class ListItem extends StatelessWidget {
  final Widget titleWidget;
  final String message;

  ListItem({this.titleWidget, this.message = ""});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: 24, vertical: this.titleWidget == null ? 0 : 24),
      child: Column(
        children: <Widget>[
          this.titleWidget ?? Divider(height: 48),
          Text(
            this.message,
            textScaleFactor: 1.5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class EmojiHeader extends StatelessWidget {
  EmojiHeader(this.emoji);

  final String emoji;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        this.emoji,
        textScaleFactor: 2,
      ),
    );
  }
}
