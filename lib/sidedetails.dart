import 'package:flutter/material.dart';

class SideDetails extends StatelessWidget {
  const SideDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
              flex: 0,
              child: Container(color: Colors.white, child: Container())),
        ],
      ),
    ));
  }
}
