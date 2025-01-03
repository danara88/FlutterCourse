import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

// ChangeNotifier: Puede notificar cuando hay cambios
class ChatProvider extends ChangeNotifier {
  final GetYesNotAnswer getYesNotAnswer = GetYesNotAnswer();

  final ScrollController chatScrollController = ScrollController();

  List<Message> messages = [
    Message(text: 'Hello Gym Bro !', fromWho: FromWho.mine),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messages.add(newMessage);

    if (text.endsWith('?')) {
      herReply();
    }

    // Notiofica a todos los que esten escuchando que hubo un cambio
    notifyListeners();
    _moveScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNotAnswer.getAnswer();
    messages.add(herMessage);
    notifyListeners();
    _moveScrollToBottom();
  }

  Future<void> _moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
        chatScrollController.position.maxScrollExtent, // Posición
        duration: const Duration(milliseconds: 200), // Duración de la animación
        curve: Curves.easeOut);
  }
}
