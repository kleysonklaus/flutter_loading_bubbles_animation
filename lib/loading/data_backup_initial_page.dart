import 'package:flutter/material.dart';

import 'loading.dart';

enum DataBackupState { initial, start, end }

class DataBackupInitialPage extends StatefulWidget {
  const DataBackupInitialPage({Key? key}) : super(key: key);

  @override
  State<DataBackupInitialPage> createState() => _DataBackupInitialPageState();
}

class _DataBackupInitialPageState extends State<DataBackupInitialPage> {
  DataBackupState _currentState = DataBackupState.initial;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Column(
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
                Text(
                  "last backup:",
                  style: TextStyle(),
                ),
                SizedBox(height: 10),
                Text(
                  "28 may 2020",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text("create backup"),
            ),
            style: ElevatedButton.styleFrom(
                backgroundColor: mainDataBackupColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
