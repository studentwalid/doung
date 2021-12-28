import 'package:flutter/material.dart';

class School extends StatelessWidget {
  const School({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Your School"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Children",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                  ),
                ),
                Icon(Icons.family_restroom)
              ],
            ),
            const Divider(color: Colors.black),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Inbox",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    ),
                  ),
                  Icon(Icons.inbox),
                ]),
            const Divider(color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Change password",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                    )),
                Icon(Icons.lock),
              ],
            ),
            const Divider(color: Colors.black),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Connect us",
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                      )),
                  Icon(Icons.message),
                ])
          ],
        ));
  }
}
