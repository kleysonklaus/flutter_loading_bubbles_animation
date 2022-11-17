import 'package:flutter/material.dart';

import 'loading.dart';

class DataBackupInitialPage extends StatelessWidget {
  const DataBackupInitialPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            "Cloud Storage",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Text("last backup:"),
              Text("28 may 2020"),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text("create backup"),
          style: ElevatedButton.styleFrom(
            backgroundColor: mainDataBackupColor,
          ),
        ),
      ],
    );
  }
}
