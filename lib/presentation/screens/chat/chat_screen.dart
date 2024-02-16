import 'package:flutter/material.dart';
import 'package:flutter_application_02_yesnomaybe_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:flutter_application_02_yesnomaybe_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_02_yesnomaybe_app/presentation/widgets/shared/text_field_form.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: const Size.fromHeight(kToolbarHeight) ,child: _AppBar()),
      body: _ChatView(),
    );
  }
}

class _AppBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://media.es.wired.com/photos/642c7a56d1a2eac0c367cad4/16:9/w_1920,c_limit/bill%20gates%20no%20frrenara%20ia.jpg'),
        ),
      ),
      title: const Text('Bill Gates'),
      centerTitle: false,
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index%2==0)? const HerMessageBubble():
                const MyMessageBubble();
              },
            )),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
