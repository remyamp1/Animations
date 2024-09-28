import 'package:flutter/material.dart';
class TweenTransitionDemo extends StatefulWidget{
  const TweenTransitionDemo ({super.key});
  @override
  State <TweenTransitionDemo> createState()=> _TweenTransitionDemoState();

}
class _TweenTransitionDemoState extends State<TweenTransitionDemo>{
  bool _isLarge =false;


 @override
 Widget build (BuildContext context){
  return Scaffold(
  appBar: AppBar(
    title: Text("Tween Animations"),
  ),
    body: Center(
      child: 
      TweenAnimationBuilder(
        tween: Tween<double>(begin: 100,end:_isLarge ? 200:100),
    duration: Duration(seconds: 1),
    builder: (context, Size, child) {
      return Container(
        height: 200,
        width: 200,
        color: Colors.blue,
        child: child,
      );
    },
      child: Center(
        child: Text("Tween"),
      ),),
    ),
    floatingActionButton: FloatingActionButton(
      child: Icon(Icons.play_arrow_outlined),onPressed: (){
      setState(() {
        _isLarge= !_isLarge;
      });
    },
    ),
    
  );
 }
}