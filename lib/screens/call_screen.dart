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
            backgroundImage: NetworkImage(mario),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Mario Monteiro",
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
              Text('(2)  9:52PM'),
            ],
          ),
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(nilton),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Nilton Domingos",
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
              Text('1:00PM'),
            ],
          ),
        ),
      ],
    );
  }
}
