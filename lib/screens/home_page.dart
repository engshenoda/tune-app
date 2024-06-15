import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widget/tune_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  final List<TuneModel> itemmodel = const [
    TuneModel(
      color: Colors.red,
      sound: 'note1.wav',
    ),
    TuneModel(
      color: Colors.orange,
      sound: 'note2.wav',
    ),
    TuneModel(
      color: Colors.yellow,
      sound: 'note3.wav',
    ),
    TuneModel(
      color: Colors.green,
      sound: 'note4.wav',
    ),
    TuneModel(
      color: Color.fromARGB(255, 25, 105, 28),
      sound: 'note5.wav',
    ),
    TuneModel(
      color: Colors.blue,
      sound: 'note6.wav',
    ),
    TuneModel(
      color: Colors.purple,
      sound: 'note7.wav',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutte Tune',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      body: Column(
        children: itemmodel
            .map(
              (e) => TuneItem(
                color: e,
                items: e,
              ),
            )
            .toList(),
      ),
    );
  }
}
