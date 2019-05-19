import 'package:flutter/material.dart';


class App extends StatefulWidget{
  
  createState(){
    return AppState();
  }

}

// Create a class that will be our custom widget 
 // This class must extend the 'StateLess Widget' base class
 class AppState extends State<App> {

   int counter = 0;
   //Must define a 'build' method that returns the widgets that *this* widget will show
   Widget build(context) {
   return MaterialApp(
      home: Scaffold(
        body: Text('$counter'),
        appBar: AppBar(title: Text('Lets see some Images')
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          onPressed: () {
            
            print('hi There');
            setState(() {
                    counter+= 1;
            });
          },
        ),
      ),
    );
   }

 }