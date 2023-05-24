// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child});
  final List<Widget> child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, Utils.navBarHeight),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: child,
            ),
          ),
        ),
      ),
    );
  }
}
