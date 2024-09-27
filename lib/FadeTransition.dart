import 'package:flutter/material.dart';
class FadeTransitionDemo extends StatefulWidget{
  const FadeTransitionDemo ({super.key});
  @override
  State <FadeTransitionDemo> createState()=> _FadeTransitionDemoState();

}
class _FadeTransitionDemoState extends State<FadeTransitionDemo>
with SingleTickerProviderStateMixin{
  AnimationController? _controller;
  Animation<double> ? _animation;
  @override
  void initState(){
    super.initState();
    _controller= AnimationController(duration: Duration(seconds: 2),
    vsync: this);
    _animation=CurvedAnimation(parent: _controller!, curve: Curves.easeIn);
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
    appBar: AppBar(title: 
    Text("Fade Transition Demo"),),
    body: Center(
      child: FadeTransition(opacity:_animation!,
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
        child: Center(
          child: Text("Hello Flutter"),
        ),
      ),),
    ),
    floatingActionButton: FloatingActionButton(child: Icon(Icons.play_arrow_outlined),
    onPressed: (){
      if(_controller!.isCompleted){
        _controller!.reverse();
      }else{
        _controller!.forward();
      }
    }),
  );
 }
}