import 'package:flutter/material.dart';
import 'package:intagram_app/ui/widgets/story_widget.dart';
import 'package:intagram_app/ui/widgets/user_post_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 110, child: Stories()),
          Divider(
            height: 1,
          ),
          PostingBox(),
        ],
      ),
    );
  }
}
