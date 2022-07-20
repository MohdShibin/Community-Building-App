import 'package:flutter/material.dart';

class SettingsItem extends StatelessWidget {
  String? title;
  IconData? icon;
  VoidCallback? onTap;

  SettingsItem({
    Key? key,
    @required this.title,
    @required this.icon,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: ListTile(
        trailing: Icon(icon),
        title: Text(title!),
        onTap: onTap,
        tileColor: Color(0xffF0F4F5),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),

      ),
    );
  }
}
