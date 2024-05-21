import 'dart:math';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter/material.dart';

class HomePagess extends StatefulWidget {
  const HomePagess({super.key});

  @override
  State<HomePagess> createState() => _HomePageState();
}

class _HomePageState extends State<HomePagess> {
  final Gemini gemini = Gemini.instance;
  List<ChatMessage> messages = [];

  ChatUser currentUser = ChatUser(id: "0");
  ChatUser geminiUser = ChatUser(id: "1");

  TextEditingController _textController = TextEditingController();
  bool _welcomePromptVisible = true;

  void _onSend() {
    setState(() {
      _welcomePromptVisible = false;
    });
  }

  void _resetScreen() {
    setState(() {
      _welcomePromptVisible = true;
      messages.clear();
      _textController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Color(0xFF3E64FF),
        centerTitle: true,
        title: Row(
          children: [
            // GestureDetector(
            //   onTap: () {},
            //   child: Container(
            //     width: 48,
            //     height: 48,
            //     padding: const EdgeInsets.all(12),
            //     clipBehavior: Clip.antiAlias,
            //     decoration: ShapeDecoration(
            //       shape: RoundedRectangleBorder(
            //         side: BorderSide(width: 1, color: Colors.white),
            //         borderRadius: BorderRadius.circular(18),
            //       ),
            //     ),
            //     child: Icon(
            //       Icons.arrow_back,
            //       color: Colors.white,
            //     ),
            //   ),
            // ),
            SizedBox(
              width: 40,
            ),
            Text(
              'PharmaFriend',
              style: TextStyle(
                color: Colors.white,
                decoration: TextDecoration.none,
                fontSize: 25,
                fontFamily: 'nunito-extrabold',
                fontWeight: FontWeight.w800,
                height: 0,
                letterSpacing: -0.32,
              ),
            ),
          ],
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
              icon: const Icon(Icons.add, color: Colors.white),
              iconSize: 36,
              onPressed: _resetScreen,
            ),
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: _welcomePromptVisible
                ? Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Hello! Welcome to PharmaFriend: Your virtual health assistant! \nHow can I help you today with your health concerns?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontFamily: 'nunito-extrabold',
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  )
                : ListView.builder(
                    reverse: true,
                    itemCount: messages.length,
                    itemBuilder: (context, index) {
                      final message = messages[index];
                      final isCurrentUser = message.user.id == currentUser.id;
                      return Align(
                        alignment: isCurrentUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 8),
                          padding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14),
                          decoration: BoxDecoration(
                            color: Color(0xFF3E64FF),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: isCurrentUser
                                  ? Radius.circular(10)
                                  : Radius.zero,
                              bottomRight: isCurrentUser
                                  ? Radius.zero
                                  : Radius.circular(10),
                            ),
                          ),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.8,
                          ),
                          child: Text(
                            message.text,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontFamily: 'nunito-extrabold',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF3E64FF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _textController,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'nunito-extrabold',
                        fontWeight: FontWeight.w600,
                      ),
                      decoration: InputDecoration(
                        hintText: "Write your message...",
                        hintStyle: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'nunito-extrabold',
                          fontWeight: FontWeight.w700,
                        ),
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send, color: Color(0xFF3E64FF)),
                  onPressed: () {
                    _onSend();
                    _sendMessage(ChatMessage(
                      user: currentUser,
                      createdAt: DateTime.now(),
                      text: _textController.text,
                    ));
                    _textController.clear();
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Pharmafriend may occasionally provide inaccurate information. Make sure to double check with a healthcare professional.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 13,
                fontFamily: 'nunito-extrabold',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _sendMessage(ChatMessage chatMessage) {
    setState(() {
      messages.insert(0, chatMessage);
    });
    try {
      String question = chatMessage.text;
      StringBuffer responseBuffer = StringBuffer();
      gemini.streamGenerateContent(question).listen((event) {
        String responsePart = event.content?.parts
                ?.fold("", (previous, current) => "$previous${current.text}") ??
            "";
        responseBuffer.write(responsePart);
      }).onDone(() {
        ChatMessage message = ChatMessage(
          user: geminiUser,
          createdAt: DateTime.now(),
          text: responseBuffer.toString(),
        );
        setState(() {
          messages.insert(0, message);
        });
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }
}

class ChatMessage {
  final ChatUser user;
  final DateTime createdAt;
  String text;

  ChatMessage({
    required this.user,
    required this.createdAt,
    required this.text,
  });
}

class ChatUser {
  final String id;

  ChatUser({required this.id});
}