import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _ChatView(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        'Gym Bro 🖖🏼💪🏽',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
      centerTitle: false,
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.revistavanityfair.es/photos/60e84d315be4efc0659fa1b7/master/w_1600%2Cc_limit/33106.jpg'),
        ),
      ),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Pendiente de los cambios que hay en la clase ChatProvider
    final ChatProvider chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        // symetric: Hace un padding en la parte horizontal y vertical.
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    // Amarrar el scroll controller al list view
                    controller: chatProvider.chatScrollController,
                    itemCount: chatProvider.messages.length,
                    itemBuilder: (context, index) {
                      final Message message = chatProvider.messages[index];

                      return (message.fromWho == FromWho.him)
                          ? HerMessageBubble(message: message)
                          : MyMessageBubble(message: message);
                    })),

            // Approach 1
            // MessageFieldBox(onValue: (value) => chatProvider.sendMessage(value)),

            // Approach 2
            MessageFieldBox(onValue: chatProvider.sendMessage)
          ],
        ),
      ),
    );
  }
}
