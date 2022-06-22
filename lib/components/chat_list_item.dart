import 'package:flutter/material.dart';

class ChatListItem extends StatelessWidget {
  String? name;
  String? subtitle;
  ChatListItem({Key? key, @required this.name, @required this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    //   return GestureDetector(
    //     onTap: (){

    //     },
    //     child: Container(
    //       padding: EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
    //       child: Row(
    //         children: <Widget>[
    //           Expanded(
    //             child: Row(
    //               children: <Widget>[
    //                 CircleAvatar(
    //                   radius: 32,
    //                   backgroundColor: Colors.blue,
    //                   child: CircleAvatar(
    //                   backgroundColor: Colors.yellow,
    //                   maxRadius: 30,

    //                 ),
    //                 ),
    //                 SizedBox(width: 16,),
    //                 Expanded(
    //                   child: Container(
    //                     color: Colors.transparent,
    //                     child: Column(
    //                       crossAxisAlignment: CrossAxisAlignment.start,
    //                       children: <Widget>[
    //                         Text(text!),
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.black,
          maxRadius: 30,
        ),
        title: Text(name!),
        subtitle: Text(subtitle!),
        onTap: () {},
        tileColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
