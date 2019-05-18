import 'package:flutter/material.dart';


// Create a class that will be our custom widget
 // This class must extend the 'StateLess Widget' base class
 class App extends StatelessWidget {

   //Must define a 'build' method that returns the widgets that *this* widget will show
   Widget build(context) {
   return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Lets see some Images')
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          onPressed: () {
            print('hi There');
          },
        ),
      ),
    );
   }
      
 }