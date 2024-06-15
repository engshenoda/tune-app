import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.items, required TuneModel color});
  final TuneModel items;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          items.playsound();
        },
        child: Container(
          decoration: BoxDecoration(color: items.color),
        ),
      ),
    );
  }
}
