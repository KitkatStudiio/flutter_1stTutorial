import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_models.dart';
import 'dart:convert';

class App extends StatefulWidget{
  
  createState(){
    return AppState();
  }

}

// Create a class that will be our custom widget 
 // This class must extend the 'StateLess Widget' base class
 class AppState extends State<App> {

   int counter = 0;
   
   void fetchImage()  async {
     counter++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var imageModel = new ImageModel.fromJson(json.decode(response.body));
    print(imageModel.url);
   }

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
          onPressed: fetchImage,
        ),
      ),
    );
   }

 }