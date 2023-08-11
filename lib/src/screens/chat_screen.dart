import 'package:chat_gpt_app/src/constants/app_color.dart';
import 'package:chat_gpt_app/src/constants/assest_manager.dart';
import 'package:chat_gpt_app/src/widgets/chat_item.dart';
import 'package:chat_gpt_app/src/widgets/chooser_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController textEditingController = TextEditingController();

  bool isTyping = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(AssetManager.chatLogo),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () async {
              await showModalBottomSheet(
                  backgroundColor: AppColor.scaffoldBg,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  )),
                  context: context,
                  builder: (context) {
                    return const ChooserModel();
                  });
            },
            icon: const Icon(Icons.more_vert_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Flexible(
            child: ListView.builder(
              itemCount: 2,
              itemBuilder: (_, index) {
                return MessageItem(
                  mgs: "Hello",
                  isBot: index == 0,
                );
              },
            ),
          ),
          isTyping
              ? const SpinKitThreeBounce(
                  color: Colors.white,
                  size: 15.0,
                  duration: Duration(seconds: 1),
                )
              : const SizedBox.shrink(),
          Container(
            color: Colors.grey.withOpacity(0.4),
            child: Row(
              children: [
                Flexible(
                  child: TextField(
                    controller: textEditingController,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    decoration: const InputDecoration.collapsed(
                      hintText: "How can I help you?",
                      hintStyle: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.send_rounded,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
