import 'package:flutter/material.dart';

addCommunity(context) {
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
          title: Center(
            child: Text(
              "Create Community",
              style: TextStyle(fontSize: 24.0),
            ),
          ),
          content: Container(
            height: 350,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Community name',
                      labelText: 'Name',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter Community Description',
                      labelText: 'Description',
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff556080),
                      ),
                      child: const Text(
                        "Create",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      });
}
