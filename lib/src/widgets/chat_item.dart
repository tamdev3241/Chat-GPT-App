import 'package:flutter/material.dart';

import '../constants/app_color.dart';
import '../constants/assest_manager.dart';

class MessageItem extends StatefulWidget {
  final String mgs;
  final bool isBot;
  const MessageItem({
    super.key,
    required this.mgs,
    this.isBot = false,
  });

  @override
  State<MessageItem> createState() => _MessageItemState();
}

class _MessageItemState extends State<MessageItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        textDirection: widget.isBot ? TextDirection.ltr : TextDirection.rtl,
        children: [
          Image.asset(
            widget.isBot ? AssetManager.chatLogo : AssetManager.person,
            height: 35,
            width: 35,
          ),
          const SizedBox(width: 6),
          Container(
            padding: const EdgeInsets.all(10.0),
            width: MediaQuery.of(context).size.width - 180,
            decoration: BoxDecoration(
              color: widget.isBot
                  ? AppColor.card
                  : Colors.green[600]?.withOpacity(0.8),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              widget.mgs,
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
