import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: itemCount,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("List ${(index + 1)}"),
            leading: const Icon(Icons.person),
            trailing: const Icon(Icons.settings),
            onTap: () {
              debugPrint("List ${(index + 1)} clicked");
            },
          );
        });
  }
}
