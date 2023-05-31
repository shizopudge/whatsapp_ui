import 'package:flutter/material.dart';

import '../info.dart';
import 'my_message_card.dart';
import 'sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        if (message['isMe'] == true) {
          return MyMessageCard(
            message: message['text'].toString(),
            date: message['time'].toString(),
          );
        }
        return SenderMessageCard(
          message: message['text'].toString(),
          date: message['time'].toString(),
        );
      },
    );
  }
}
