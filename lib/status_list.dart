import 'package:flutter/material.dart';

import 'story_page.dart';

class StatusList extends StatelessWidget {
  StatusList({required this.image, required this.name, required this.subtitle});

  ImageProvider image;
  Widget name;
  Widget? subtitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: image,
      ),
      title: name,
      subtitle: subtitle,
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => StoryPage())),
    );
  }
}
