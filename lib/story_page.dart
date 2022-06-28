import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPage extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.pageImage(
          url:
              "https://scontent.flad7-1.fna.fbcdn.net/v/t39.30808-6/276174204_4742312355873880_4019139829712300863_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGSs1FZe5TVnbE040rTsgbQrp_DQcUo2ayun8NBxSjZrKqeUkqW9KZYtPMfEP56H1n5fQSzeEcxNGY6SUuKqQIY&_nc_ohc=P3_CoQ9Q2JsAX_YuOwQ&_nc_ht=scontent.flad7-1.fna&oh=00_AT_XmkscjYB6XPZLZ82noZmxt4VVGZRHWV8IK79PCCt4rA&oe=62C0BDC5",
          controller: _storyController),
      StoryItem.pageImage(
          url:
              "https://scontent.flad7-1.fna.fbcdn.net/v/t39.30808-6/276092451_4726030917502024_4600890873448318248_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_eui2=AeFfZfqm9SRE9LbKy2l-qukNIZNyejuioN4hk3J6O6Kg3h2JtUuul0BT33gHobq4vT-OY6QplTXh_-yQjZO_kRU4&_nc_ohc=t-dWdtmM8QUAX8CyAx3&tn=PxHCBPkPxBW1bCCI&_nc_ht=scontent.flad7-1.fna&oh=00_AT-_b207qTBXd0q8-PpKImO5QJWPlUW7mMA4BQTkbQqFvQ&oe=62C0771E",
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
