import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
     title: 'Flutter App',
    //  home:TutorialHome(),
     home:Scaffold(
      body: Center(
        child:Counter(),
      ),
     ),
    ),
  );
}


// class TutorialHome extends StatelessWidget{
//   const TutorialHome({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: const IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: ' Navigation menu',
//           onPressed: null,
//         ),
//         title: const Text('Example title'),
//         actions: const[
//           IconButton(
//             icon: Icon(Icons.search),
//              onPressed: null),
//         ]
//       ),
//       body: const Center(
//         child: Text('hello pro3'),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         tooltip: 'Add',
//         onPressed: null,
//         child: Icon(Icons.add),
//       ),
//     );
//     }
// }
class MyButton extends StatelessWidget{
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('MyButton was tapped!');
      },
      child:Container (
        height: 50,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('Engage'),
        ),
      ),
    );
  }
}
class Counter extends StatefulWidget{
  const Counter({super.key});
  @override
  State<Counter> createState() => _CounterState();
}
class _CounterState extends State<Counter> {
  int _counter = 0;
  void _increment() {
    setState(() {
      _counter++;
    });
  }
  
  @override
  Widget build(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ElevatedButton(
        onPressed: _increment,
        child: const Text('Increment'),
      ),
      const SizedBox(width: 16,),
      Text('Count: $_counter'),
    ]
  );
  
  }
}
