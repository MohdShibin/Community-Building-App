import 'package:community_app/pages/community_chat_page.dart';
import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  String? communityName;
  String? communityChatId;
  bool? isFriend = false;
  ChatListItem({Key? key, @required this.communityName, @required this.communityChatId,this.isFriend})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        leading: CircleAvatar(
          maxRadius: 30,
          backgroundImage: isFriend == true ? AssetImage(
            'assets/user.png',
          ):AssetImage(
            'assets/community.png',
          ),
        ),
        title: Text(communityName!),
        onTap: () {
          // some error occurs while checking condition
          // if(isFriend==false){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => CommunityChatPage(communityName: communityName!, groupChatId: communityChatId!),
              ),
            );
          // }else{}
        },
        tileColor: Color(0xffF0F4F5),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
