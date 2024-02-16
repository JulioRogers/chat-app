import 'package:flutter/material.dart';


class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineborder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print(textValue);
          textController.clear();
        },
      ),
      hintText: "escribe aqui",
      enabledBorder: outlineborder,
      focusedBorder: outlineborder,
    );

    return TextFormField(
      decoration: inputDecoration,
      controller: textController,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        print(value);
        textController.clear();
        focusNode.requestFocus();
      },
      onTapOutside: (event) => focusNode.unfocus(),
    );
  }
}
