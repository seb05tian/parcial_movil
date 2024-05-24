import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:parcial_movil_co2/screens/message_field_box.dart';

import 'Screens_H/configuracion/appbar/custon_appBar2.dart';

import 'her_message_bubble.dart';
import 'my_message_bubble.dart';


class ChatScreen extends StatelessWidget {
  static const String routename = "Chats";
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar2(context: context),
      body: _ChatView(),
    );
  }
}


class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: const AssetImage('assets/img/fondo.png'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    itemBuilder: (context, index) {
                      return (index % 2 == 0)
                          ? const HerMessageBubble()
                          : const MyMessageBubble();
                    })),
            const MessageFieldBox(),
          ],
        ),
      ),
    ));
  }
}
