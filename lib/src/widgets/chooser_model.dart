import 'models_dropdown.dart';
import 'package:flutter/material.dart';

class ChooserModel extends StatelessWidget {
  const ChooserModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Flexible(
            child: Text(
              "Choosen Model: ",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: ModelsDropdown(),
          ),
        ],
      ),
    );
  }
}
