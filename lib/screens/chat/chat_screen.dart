import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/enums.dart';
import 'package:shop_app/screens/chat/components/body.dart';
import 'package:shop_app/screens/home/components/body.dart';
import 'package:shop_app/screens/splash/components/body.dart';
import './app_theme.dart';
import './screens/screen.dart';

class ChatScreen extends StatelessWidget {
  static String routeName = "/chat";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chat"),
      ),
      body: BodyChat(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.message),
    );
  }
}
