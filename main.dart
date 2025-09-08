import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design Library widgets, tools for building a material design UI
google design system

import - dart keyword to include external libraries

package:flutter - refers to the material design packages

this is essential for building flutter apps w/ a standard UI
 * */

void main() {
  runApp(const MyApp()); // flutter function that initialize the app and attaches root widget (My App()) to the screen

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hello Flutter',
        theme: ThemeData(
            primarySwatch: Colors.red
        ),
        home: const MyHomePage()
    );
  }

}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Title App'),
        ),

        body: Center (
        child: Column (
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
           Image.asset('assets/img.png',
           width: 150,
           height: 150,
        ), //Image.asset
           const Text(
             'The TV series "Wednesday" follows Wednesday Addams years as a student, '
                 'where she tries to master her psychic ability, thwart a killing spree, '
                 'and solve the mystery that embroiled her parents. In one episode, '
                 'she is ambushed by a monster and disrupts a ceremony.',
             style: TextStyle(fontSize: 50),
           ),
         ],
        ),
      ),
    );
  }




}