import 'package:flutter/material.dart';
class AnimatedcontainerExample extends StatefulWidget {
  const AnimatedcontainerExample ({super.key});
  @override
  State<AnimatedcontainerExample> createState() =>
  _AnimatedcontainerExampleState();


}
class _AnimatedcontainerExampleState extends State <AnimatedcontainerExample>{
  double _width=100;
  double _height=200;
  Color _color=Colors.blue;
  void _animatedcontainer(){
    setState(() {
      _width= _width ==100?200:100;
      _height= _height == 100?200:100;
      _color =_color== Colors.blue ? Colors.red : Colors.blue;

    });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: 
      Text("Animated Container Example"),),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _height,
          color: _color,
          duration: Duration(seconds: 2),
          curve: Curves.bounceIn,
          child: GestureDetector(
            onTap: _animatedcontainer,
            child: FlutterLogo(
              size: 75,
            ),
          ),
        ),
      ),
    );
  }
}