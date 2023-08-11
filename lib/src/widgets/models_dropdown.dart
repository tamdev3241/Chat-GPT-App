import 'package:chat_gpt_app/src/constants/app_color.dart';
import 'package:flutter/material.dart';

class ModelsDropdown extends StatefulWidget {
  const ModelsDropdown({super.key});

  @override
  State<ModelsDropdown> createState() => _ModelsDropdownState();
}

class _ModelsDropdownState extends State<ModelsDropdown> {
  @override
  Widget build(BuildContext context) {
    String currentModel = "Model0";
    return DropdownButton(
      dropdownColor: AppColor.scaffoldBg,
      items: List.generate(
        5,
        (index) => DropdownMenuItem(
          value: "Model$index",
          child: Text(
            "Model$index",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      iconEnabledColor: Colors.white,
      value: currentModel,
      onChanged: (value) {
        if (currentModel != value.toString()) {
          setState(() {
            currentModel = value.toString();
          });
        }
      },
    );
  }
}
