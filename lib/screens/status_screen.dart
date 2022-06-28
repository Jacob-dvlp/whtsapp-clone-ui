import 'package:clone_whtsapp_ui/screens/constants.dart';
import 'package:clone_whtsapp_ui/status_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xfff2f2f2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.white,
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Stack(
                  children: <Widget>[
                    const CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(noAvatar),
                    ),
                    Positioned(
                      bottom: 0.0,
                      right: 1.0,
                      child: Container(
                        height: 20,
                        width: 20,
                        child: const Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 15,
                        ),
                        decoration: const BoxDecoration(
                          color: Color(0xFF008069),
                          shape: BoxShape.circle,
                        ),
                      ),
                    )
                  ],
                ),
                title: const Text(
                  "My status",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  "Tap to add status update",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Viewed updates",
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  StatusList(
                    image: const NetworkImage(pheebsAvatar),
                    name: const Text(
                      "Pheobe Buffay",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('23 minutes ago',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  StatusList(
                    image: const NetworkImage(monicaAvatar),
                    name: const Text(
                      "Monica Geller",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text('24 minutes ago',
                        style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  StatusList(
                    image: const NetworkImage(rossAvatar),
                    name: const Text(
                      "Ross Geller",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: const Text(
                      '23 minutes ago',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
