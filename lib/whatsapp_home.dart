import 'package:clone_whtsapp_ui/screens/call_screen.dart';
import 'package:clone_whtsapp_ui/screens/camera.dart';
import 'package:clone_whtsapp_ui/screens/chat_screen.dart';
import 'package:clone_whtsapp_ui/screens/status_screen.dart';
import 'package:flutter/material.dart';

class WhatsHome extends StatefulWidget {
  const WhatsHome({Key? key}) : super(key: key);

  @override
  State<WhatsHome> createState() => _WhatsHomeState();
}

class _WhatsHomeState extends State<WhatsHome> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),
          elevation: 1.9,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: const <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
          actions: const <Widget>[
            Icon(Icons.search),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(Icons.more_vert),
            )
          ],
        ),
        body: TabBarView(
          controller: _tabController,
          children: const <Widget>[
            CameraScreen(),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          // backgroundColor: Theme.of(context).accentColor,
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () {},
        ));
  }
}
