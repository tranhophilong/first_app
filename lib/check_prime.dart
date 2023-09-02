import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(const CheckPrimeApp());
}
class CheckPrimeApp extends StatelessWidget{

  const CheckPrimeApp({super.key});

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(title: "check prime",
    home:  CheckPrimeScreen(),);
  }

}


class CheckPrimeScreen extends StatefulWidget{

  const CheckPrimeScreen({super.key});
  @override
  State<CheckPrimeScreen> createState() => _StateCheckPrimeScreen();

}

class _StateCheckPrimeScreen extends State<CheckPrimeScreen>{
  final myController = TextEditingController();
  int? number;

  @override
  void dispose() {
    // TODO: implement dispose
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(() {
      setState(() {
        number = int.tryParse(myController.text);
      });
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Check Prime"),),
      body:   Padding(
        padding: const  EdgeInsets.all(16),
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(child: TextFieldPrime(textEditController: myController)),
                // TextFieldPrime(textEditController: myController),
                Padding(padding: const EdgeInsets.all(16),
                child: ButtonCheck(number: number),)
              ],
            ),
          ],)
        ,)
    );
  }
}


SnackBar snackBarIsPrime(String text){
  return SnackBar(
    content: Text(text),
    action: SnackBarAction(
      label: 'Undo',
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );
}

class ButtonCheck extends StatelessWidget{
  final int? number;
  const ButtonCheck({super.key, required this.number });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SizedBox(
      width: 100,
    child:  ElevatedButton(onPressed: (){
      if (number != null){
        var snackBar = snackBarIsPrime("");
        if (isPrime(number!)){

           snackBar = snackBarIsPrime("Number $number is prime");
          // Find the ScaffoldMessenger in the widget tree
          // and use it to show a SnackBar.
        }else{
          snackBar = snackBarIsPrime("Number $number  isn't prime");
        }
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
    },
      child: const Text("Check"),

    ),
    );
  }

  bool isPrime(int n){
    // Corner case
    if (n <= 1){
      return false;
    }
    // Check from 2 to square root of n
    for (int i = 2; i <= sqrt(n); i++){
      if (n % i == 0){
        return false;
      }
    }
    return true;
  }
}

class TextFieldPrime extends StatelessWidget {
   TextEditingController textEditController;
   TextFieldPrime({super.key,required this.textEditController});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      // width: 250,
      child:  TextField(
        controller: textEditController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'input number',
        ),
      ),
    );
  }
}


