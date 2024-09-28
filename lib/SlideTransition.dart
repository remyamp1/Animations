import 'package:flutter/material.dart';
class SlideTransitionDemo extends StatefulWidget{
  const SlideTransitionDemo ({super.key});
  @override
  State <SlideTransitionDemo> createState()=> _SlideTransitionDemoState();

}
class _SlideTransitionDemoState extends State<SlideTransitionDemo>
with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<Offset> ? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(vsync: this,duration: Duration(seconds: 2));
    _animation = Tween<Offset>(
      begin: Offset(1.0, 0.0),
      end: Offset(0.0, 0.0)
    ).animate(CurvedAnimation(parent:_controller!, curve: Curves.bounceOut));
    _controller!.forward();
  
  }
  @override
 void dispose()
 {
  _controller!.dispose();
  super.dispose();
 }
 @override
 Widget build (BuildContext context){
  return Scaffold(
  
    body: Center(
      child: 
      SlideTransition(
        position:_animation!,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text("Slide transitions"),
        ),
      ),),
    ),
    
  );
 }
}