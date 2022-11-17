import 'package:flutter/material.dart';

import 'data_backup_cloud_page.dart';
import 'data_backup_initial_page.dart';

const mainDataBackupColor = Color(0xFF5113AA);
const secondaryDataBackupColor = Color(0xFFBC53FA);
const backgroundColor = Color(0xFFFCE7FE);

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _progressAnimation;
  late Animation<double> _cloudOutAnimation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 7));
    _progressAnimation = CurvedAnimation(
        parent: _animationController, curve: Interval(0.0, 0.65));
    _cloudOutAnimation = CurvedAnimation(
        parent: _animationController, curve: Interval(0.7, 0.85));
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Stack(
          children: [
            DataBackupInitialPage(
              progressAnimation: _progressAnimation,
              onAnimationStarted: () {
                _animationController.forward();
              },
            ),
            DataBackupCloudPage(
              progressAnimation: _progressAnimation,
              cloudOutAnimation: _cloudOutAnimation,
            ),
          ],
        ),
      ),
    );
  }
}
