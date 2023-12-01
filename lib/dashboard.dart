import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key, required this.demolist});
  final List demolist;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [0, 1, 2, 3]
          .map((e) => Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          demolist[0] == 'Total Tip' ? '0' : titlelistvalues[e],
                          style: const TextStyle(
                              color: Color(0xff4F74A3),
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          demolist[e],
                          style: const TextStyle(
                              color: Color(0xff4F74A3),
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  final List titlelistvalues = ['20121', '£458444', '12354', '46'];
}
