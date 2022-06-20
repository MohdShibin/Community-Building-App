import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  final bool? isIconLeft;
  final VoidCallback? OnChanged;
  String? title;
  final IconData? icon;
  TopAppBar({
    Key? key,
    @required this.isIconLeft,
    @required this.OnChanged,
    @required this.title,
    @required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: isIconLeft == true
            ? [
                IconButton(
                  onPressed: OnChanged,
                  icon: Icon(
                    icon,
                  ),
                ),
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 48.0),
              ]
            : [
                const SizedBox(width: 48.0),
                Text(
                  title!,
                  style: const TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: OnChanged,
                  icon: Icon(
                    icon,
                  ),
                ),
              ],
      ),
    );
  }
}
