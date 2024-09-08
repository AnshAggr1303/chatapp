import 'package:flutter/material.dart';
import 'package:chatapp/chat_message.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];

  // Handle the submission of the text
  void _handleSubmitted(String text) {
    if (text.isNotEmpty) {
      // Create a new ChatMessage instance and add it to the list
      final ChatMessage message = ChatMessage(
        text: text,
      );

      setState(() {
        _messages.insert(0, message);
      });

      // Clear the text input field
      _textController.clear();
    }
  }

  // Create the text composer widget
  Widget _textComposerWidget() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _textController,
              decoration: const InputDecoration.collapsed(hintText: "Send a message"),
              onSubmitted: _handleSubmitted, // Handle Enter key press
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () => _handleSubmitted(_textController.text), // Handle send button press
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true, // So that new messages appear at the bottom
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return _messages[index];
              },
            ),
          ),
          _textComposerWidget(),
        ],
      ),
    );
  }
}
