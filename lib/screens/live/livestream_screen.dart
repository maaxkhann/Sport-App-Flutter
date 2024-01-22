import 'package:flutter/material.dart';
import 'package:sports_app/screens/live/widgets/livestream_stack_widget.dart';

class LiveStreamScreen extends StatelessWidget {
  const LiveStreamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: const [LiveStreamStackWidget()],
        ),
      ),
    );
  }
}
