import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class AnimatedLogoContainer extends StatefulWidget {
  const AnimatedLogoContainer({Key? key}) : super(key: key);

  @override
  _AnimatedLogoContainerState createState() => _AnimatedLogoContainerState();
}

class _AnimatedLogoContainerState extends State<AnimatedLogoContainer> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          top: _expanded ? 100 : 200,
          left: 0,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.transparent,
          ),
        ),
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          top: _expanded ? 0 : 100,
          left: 0,
          child: Container(
            width: 100,
            height: 200,
            color: Colors.blue,
            child: Text("sdsdsdsdsdsdsdsd"),
          ),
        ),
        AnimatedPositioned(
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          top: _expanded ? 0 : 100,
          left: 0,
          child: Image.asset(
            "assets/images/chef.png",
            width: 35,
            height: 35,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _expanded = !_expanded;
            });
          },
          child: Icon(Icons.arrow_downward),
        ),
      ],
    );
  }
}
