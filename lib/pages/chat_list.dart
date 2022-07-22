import 'package:community_app/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("2 Days"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.new_label_outlined))
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChatScreen()));
            },
            leading: const CircleAvatar(
              child: Icon(Icons.person),
              // minRadius: 10,
              backgroundColor: Colors.grey,
            ),
            title: Text("Serin"),
            subtitle: Text("Hello Sohail, how you doing?"),
            trailing: Text("12:49 pm"),
          );
        },
      ),
    );
  }
}
