import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  String? name;
  String? subtitle;
  bool? isFriend = false;
  ChatListItem({Key? key, @required this.name, @required this.subtitle,this.isFriend})
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
        title: Text(name!),
        subtitle: Text(subtitle!),
        onTap: () {},
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
