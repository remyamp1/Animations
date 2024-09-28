import 'package:flutter/material.dart';
class RotatTransitionDemo extends StatefulWidget{
  const RotatTransitionDemo ({super.key});
  @override
  State <RotatTransitionDemo> createState()=> _RotatTransitionDemoState();

}
class _RotatTransitionDemoState extends State<RotatTransitionDemo>
with SingleTickerProviderStateMixin{
   AnimationController? _controller;
 Animation<double> ? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(duration: Duration(seconds: 2),vsync: this)..repeat();
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate( _controller!);
  
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
    title: Text("Rotation Transition"),
  ),
    body: Center(
      child: 
      RotationTransition(
        turns:_animation!,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text("Rotate"),
        ),
      ),),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.play_arrow_outlined),onPressed: (){
      if(_controller!.isAnimating){
        _controller!.stop();
      }else{
        _controller!.repeat();
      }
    },
    ),
    
  );
 }
}