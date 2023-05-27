// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key, required this.child, this.appbar, this.color, this.padding});
  final List<Widget> child;
  final AppBar? appbar;
  final EdgeInsetsGeometry? padding;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: appbar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: padding ?? EdgeInsets.fromLTRB(8, 0, 8, Utils.navBarHeight),
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
