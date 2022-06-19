import '../components/chat_list_item.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF4F4F4),
      //backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Text('AppName'),
      //   centerTitle: true,
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(
      //         Icons.search,
      //       ),
      //     ),
      //   ],
      //   elevation: 0.0,
      // ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    width: 48.0
                  ),
                  const Text(
                    'AppName',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                children: [
                  ChatTypeNameTile('Friend'),
                  ChatListItem(name: 'Friend Nmae', subtitle: 'subtitle'),
                  ChatTypeNameTile('Communities'),
                  ChatListItem(name: 'Community 1', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 1', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 1', subtitle: 'subtitle'),
                  ChatListItem(name: 'Community 1', subtitle: 'subtitle'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ChatTypeNameTile(String title) => Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
        child: SizedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
}
