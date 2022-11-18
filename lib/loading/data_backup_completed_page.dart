import 'package:flutter/material.dart';

import 'loading.dart';

class DataBackupCompletedPage extends AnimatedWidget {
  final Animation<double> endingAnimation;
  const DataBackupCompletedPage({Key? key, required this.endingAnimation})
      : super(key: key, listenable: endingAnimation);

  double get value => (listenable as Animation).value;

  @override
  Widget build(BuildContext context) {
    return value > 0
        ? Positioned.fill(
            child: SafeArea(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        child: Text("Hello"),
                      ),
                    )),
                SizedBox(height: 60),
                Expanded(
                  child: TweenAnimationBuilder(
                    tween: Tween(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 400),
                    builder: (_, value, child) {
                      final val = value as double;
                      return Opacity(
                        opacity: val,
                        child: Transform.translate(
                          offset: Offset(
                            0.0,
                            50 * (1 - val),
                          ),
                          child: child,
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        const Text(
                          "Data has successfully\n uploaded",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        const Spacer(),
                        OutlinedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Padding(
                            padding: EdgeInsets.all(25.0),
                            child: Text(
                              "Ok",
                              style: TextStyle(
                                color: mainDataBackupColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ],
            )),
          )
        : const SizedBox.shrink();
  }
}
