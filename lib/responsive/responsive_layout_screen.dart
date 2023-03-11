import 'package:flutter/material.dart';

class RespsonsiveLayoutScreen extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const RespsonsiveLayoutScreen({Key? key,
    required this.mobileScreenLayout,required this.webScreenLayout
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
      if(constraints.maxWidth<768){
        return mobileScreenLayout;
      }
      return webScreenLayout;
    },
    );
  }
}
