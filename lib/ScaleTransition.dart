import 'package:flutter/material.dart';
class ScaleTransitionDemo extends StatefulWidget{
  const ScaleTransitionDemo ({super.key});
  @override
  State <ScaleTransitionDemo> createState()=> _ScaleTransitionDemoState();

}
class _ScaleTransitionDemoState extends State<ScaleTransitionDemo>
with SingleTickerProviderStateMixin{
  late AnimationController? _controller;
  late Animation<double> ? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(vsync: this,duration: Duration(seconds: 2));
    _animation = Tween<double>(
      begin: 2.0,
      end: 1.0,
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
  appBar: AppBar(
    title: Text("Scale Transition"),
  ),
    body: Center(
      child: 
      ScaleTransition(
        scale:_animation!,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text("Scale Me!"),
        ),
      ),),
    ),
    
  );
 }
}