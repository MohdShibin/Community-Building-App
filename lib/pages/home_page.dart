import '../../components/circular_menu_button.dart';
import '../../components/chat_list_item.dart';
import '../components/top_app_bar.dart';
import 'package:flutter/material.dart';

import 'community_pages/group_chat_list_items.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      floatingActionButton: const CircularMenuButton(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopAppBar(
                isIconLeft: false,
                OnChanged: () {},
                title: "AppName",
                icon: Icons.search,
            ),
            ChatTypeNameTile('Friend'),
            ChatListItem(
              communityName: 'Friend Name',
              communityChatId: 'subtitle',
              isFriend: true,
            ),
            ChatTypeNameTile('Communities'),
            GroupChatListItems(),
          ],
        ),
      ),
    );
  }

  Widget ChatTypeNameTile(String title) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    width: double.infinity,
    height: 26.0,
    color: Colors.white,
    child: Text(
      title,
      style: const TextStyle(
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

