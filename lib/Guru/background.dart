import 'package:flutter/material.dart';

class Background extends StatefulWidget {
  final bool showContainer;
  const Background({Key? key, required this.showContainer}) : super(key: key);

  @override
  State<Background> createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 10, top: 25, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Image.asset('assets/images/pattern2.png')],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
