import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage("assets/icons/background_image.png"),
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Column(
              children: [CustomAppBar()],
            ),
          )
        ],
      ),
    );
  }
}
