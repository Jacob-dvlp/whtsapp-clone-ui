import 'package:clone_whtsapp_ui/chat_model.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<ChatModel> dummyData = [
    ChatModel(
        name: "Eliezer António",
        message: "Como vai bro ?",
        timeStamp: "15:30 PM",
        messageUpdate: '1',
        avatarUrl: eliezerAnto),
    ChatModel(
        name: "Mario Monteiro",
        message: "Meu brother",
        timeStamp: "16:30 PM",
        messageUpdate: '1',
        avatarUrl: mario),
    ChatModel(
        name: "Nilton Domingos",
        message: "Resolveu o bug ?",
        timeStamp: "16:40 PM",
        messageUpdate: '1',
        avatarUrl: nilton),
    ChatModel(
        name: "Nicolau João II",
        message: "Wey ?",
        timeStamp: "17:30 PM",
        messageUpdate: '1',
        avatarUrl: nicolau),
    ChatModel(
        name: "Ladis Valentino",
        message: "Vem  wey",
        timeStamp: "18:00 PM",
        messageUpdate: '1',
        avatarUrl: cassinda),
    ChatModel(
        name: "Amor",
        message: "🥰🥰🥰",
        timeStamp: "19:30 PM",
        messageUpdate: '1',
        avatarUrl: priscila),
    ChatModel(
        name: "Gunther",
        message: "Oh",
        timeStamp: "19:30",
        messageUpdate: '1',
        avatarUrl: guntAvatar),
    ChatModel(
        name: "Janice",
        message: "Oh. My. God.",
        timeStamp: "19:30",
        messageUpdate: '1',
        avatarUrl: janiceAvatar),
    ChatModel(
        name: "Lázaro Manuel",
        message: 'Wey me liga',
        timeStamp: "19:30 PM",
        messageUpdate: '1',
        avatarUrl: lazaro),
    ChatModel(
        name: "Jessica",
        message: 'Ok',
        timeStamp: "2/5/97",
        messageUpdate: '1',
        avatarUrl: guntAvatar),
    ChatModel(
        name: "Maria",
        message: '🤔🤔',
        timeStamp: "2/5/97",
        messageUpdate: '1',
        avatarUrl: guntAvatar),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, index) => Column(
              children: <Widget>[
                // const Divider(
                //   height: 10.0,
                // ),
                ListTile(
                  leading: CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Colors.grey,
                    backgroundImage: NetworkImage(dummyData[index].avatarUrl),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        dummyData[index].name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        dummyData[index].timeStamp,
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 14.0),
                      ),
                    ],
                  ),
                  subtitle: Row(textDirection: TextDirection.ltr,
                      // padding: const EdgeInsets.only(top: 5.0),
                      children: [
                        const Icon(
                          Icons.done_all,
                          color: Colors.blue,
                          size: 18.0,
                        ),
                        const SizedBox(
                          width: 2.0,
                        ),
                        Expanded(
                          child: Text(
                            dummyData[index].message,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 15.0),
                          ),
                        ),
                      ]),
                ),
              ],
            ));
  }
}
