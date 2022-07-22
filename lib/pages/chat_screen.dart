import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Serin Varghese"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: height * 0.8,
            child: ListView.builder(
              itemBuilder: (context, i) {
                return const ChatBubble(
                  text: "Hello",
                  direction: "R",
                );
              },
              itemCount: 100,
            ),
          ),
          MessageArea()
        ],
      ),

      //     Center(
      //   child: ChatBubble(text: "Hello", direction: "L"),
      // )
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  // "L" if left, "R" if right
  final String direction;
  const ChatBubble({Key? key, required this.text, required this.direction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Align(
      alignment:
          direction == "L" ? Alignment.centerLeft : Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(
          top: 15,
          left: 10,
          right: 10,
        ),
        child: Container(
          // margin: EdgeInsets.all(15),
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          height: 30,
          // TODO: Make responsive height based on message length
          width: width / 2,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

class MessageArea extends StatelessWidget {
  const MessageArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width * 0.8,
            child: TextField(
                // style: TextStyle(te),
                ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send),
          )
        ],
      ),
    );
  }
}
