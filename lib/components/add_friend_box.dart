import 'package:flutter/material.dart';

addFriend(context) {
  showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        contentPadding: const EdgeInsets.only(top: 10.0),
        title: const Center(
          child: Text(
            "Find Friend",
            style: TextStyle(fontSize: 24.0),
          ),
        ),
        content: SizedBox(
          height: 350,
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.search, color: Colors.white,size: 48.0),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(36),
                    primary: Color(0xff556080), 
                  ),
                ),
              )),
        ),
      );
    },
  );
}
