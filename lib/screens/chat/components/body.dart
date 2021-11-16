import '../widgets/widgets.dart';
import 'package:flutter/material.dart';

class BodyChat extends StatelessWidget {
  const BodyChat({
    Key? key,
  }) : super(key: key);
  static String routeName = "/chat";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          RecentChats(),
          AllChats(),
        ],
      ),
    );
  }
}
