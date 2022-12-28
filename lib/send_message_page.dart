import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class SendMessagePage extends StatefulWidget {
  const SendMessagePage({Key? key}) : super(key: key);

  @override
  State<SendMessagePage> createState() => _SendMessagePageState();
}

class _SendMessagePageState extends State<SendMessagePage> {
  final mensagemEC = TextEditingController();

  @override
  void dispose() {
    mensagemEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('alt'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: mensagemEC,
            ),
            TextButton(
                onPressed: () {
                  Dio().post(
                    'https://api.telegram.org/bot5963051658:AAGxtohIfV12NhMqUOOxLNkfpbEvxl3k0b8/sendMessage',
                    data: {
                      'chat_id': '-841019667',
                      'text': mensagemEC.text,
                    },
                  );
                },
                child: const Text('aaaaaaaaaa')),
          ],
        ),
      ),
    );
  }
}
