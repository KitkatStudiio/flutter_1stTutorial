// I need to import helperlibraries form flutter to get content on the screen
import 'package:flutter/material.dart';
 
//Define a 'main' function to run when our app starts
void main() {

// Create a new tex widget to show some text on the screen
var app = MaterialApp(
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

// Take that widget and get it on the screen
runApp(app);

}
