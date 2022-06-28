import 'package:clone_whtsapp_ui/screens/constants.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(janiceAvatar),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Janice",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.phone,
                color: Color(0Xff00a884),
              )
            ],
          ),
          subtitle: Row(
            textDirection: TextDirection.ltr,
            children: const [
              Icon(
                Icons.call_received,
                color: Colors.red,
                size: 18.0,
              ),
              SizedBox(
                width: 2.0,
              ),
              Text('(9) March 5, 9:52PM'),
            ],
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(pheebsAvatar),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Pheobe Buffay",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.phone,
                color: Color(0Xff00a884),
              )
            ],
          ),
          subtitle: Row(
            textDirection: TextDirection.ltr,
            children: const [
              Icon(
                Icons.call_made,
                color: Colors.green,
                size: 18.0,
              ),
              SizedBox(
                width: 2.0,
              ),
              Text('January 27, 1:00PM'),
            ],
          ),
        ),
      ],
    );
  }
}
