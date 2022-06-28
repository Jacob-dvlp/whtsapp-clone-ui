import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(title: '''If you do not make time for your wellness,
you will be forced to make time for your illness.
#ReadThatAgain''', backgroundColor: Colors.red),
      StoryItem.pageImage(
          url:
              "https://media.gettyimages.com/photos/pictured-jennifer-aniston-as-rachel-green-picture-id143479356",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://techcrunch.com/wp-content/uploads/2015/08/safe_image.gif",
          controller: _storyController,
          imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: false,
      ),
    );
  }
}
