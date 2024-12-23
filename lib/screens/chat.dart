import 'package:doctor_app/screens/call.dart';
import 'package:doctor_app/screens/videocall.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Map<String, dynamic>> messages = [
    {
      'text': 'Dr. Kawsar is typing...',
      'isTyping': true,
      'doctor': true,
    },
    {
      'text': 'Hi Kawsar, I am cardio patient. I need your help imidiately.',
      'doctor': true,
      'isAudio': false,
      'time': '18: 27'
    },
    {
      'text': '',
      'isAudio': true,
      'doctor': false,
      'time': '18: 27'
    }, // Audio message
    {
      'text': 'Hi Kawsar, I am cardio patient. I need your help immediately.',
      'isSender': false,
      'doctor': false,
      'time': '18: 27'
    },
    {
      'text': 'Hi, don\'t worry! I am here. Let me know your situation now.',
      'doctor': false,
      'isAudio': false,
      'time': '18: 27'
    },
  ];

  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: AppColors.grey,
              backgroundImage:
                  AssetImage('assets/images/woman.png'), // Doctor avatar
            ),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr. Kawsar', style: TextStyles.s18w500black),
                Text('Online', style: TextStyles.s15w400blue),
              ],
            ),
          ],
        ),
        actions: [
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => Call(),
                    ),
                  ),
              child: SvgPicture.asset('assets/svg/call.svg')),
          SizedBox(width: 16),
          GestureDetector(
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => VideoCall(),
                    ),
                  ),
              child: SvgPicture.asset('assets/svg/video.svg')),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  reverse: true,
                  itemCount: messages.length,
                  itemBuilder: (context, index) {
                    final message = messages[index];
                    if (message['isTyping'] == true) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              Text(
                                message['text'],
                                style: TextStyle(
                                    fontStyle: FontStyle.italic,
                                    color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else if (message['isAudio'] == true) {
                      return Align(
                        alignment: message['doctor'] == false
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            message['doctor']
                                ? CircleAvatar(
                                    backgroundColor: AppColors.black,
                                  )
                                : SizedBox(),
                            Container(
                              width: MediaQuery.of(context).size.width - 120,
                              height: 73,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              padding: const EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                color: message['doctor'] == false
                                    ? AppColors.blue
                                    : Colors.blue[50],
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                  bottomRight: message['doctor']
                                      ? Radius.circular(20)
                                      : Radius.circular(0),
                                  bottomLeft: message['doctor']
                                      ? Radius.circular(0)
                                      : Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/svg/play.svg'),
                                  const SizedBox(width: 10),
                                  SvgPicture.asset('assets/svg/sound.svg'),
                                  const SizedBox(width: 10),
                                  Text(
                                    '0:37',
                                    style: TextStyles.s16w400white,
                                  ),
                                ],
                              ),
                            ),
                            message['doctor']
                                ? SizedBox()
                                : CircleAvatar(
                                    backgroundColor: AppColors.black,
                                  ),
                          ],
                        ),
                      );
                    } else {
                      return message['isTyping'] == true
                          ? SizedBox()
                          : Align(
                              alignment: message['doctor'] == false
                                  ? Alignment.centerRight
                                  : Alignment.centerLeft,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  message['doctor']
                                      ? CircleAvatar(
                                          backgroundColor: AppColors.black,
                                        )
                                      : SizedBox(),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 120,
                                    margin: const EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: message['doctor'] == false
                                          ? AppColors.blue
                                          : Colors.blue[50],
                                      borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(20),
                                        topLeft: Radius.circular(20),
                                        bottomRight: message['doctor']
                                            ? Radius.circular(20)
                                            : Radius.circular(0),
                                        bottomLeft: message['doctor']
                                            ? Radius.circular(0)
                                            : Radius.circular(20),
                                      ),
                                    ),
                                    child: Text(message['text'],
                                        style: message['doctor']
                                            ? TextStyles.s14w400black
                                            : TextStyles.s14w400white),
                                  ),
                                  message['doctor']
                                      ? SizedBox()
                                      : CircleAvatar(
                                          backgroundColor: AppColors.black,
                                        ),
                                ],
                              ),
                            );
                    }
                  }),
            ),
            SizedBox(
              height: 52,
              child: TextField(
                controller: _messageController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: AppColors.blue,
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset('assets/svg/upload.svg'),
                      SizedBox(width: 12),
                      SvgPicture.asset('assets/svg/micro.svg'),
                      SizedBox(width: 12),
                    ],
                  ),
                  hintText: 'Type a message...',
                  hintStyle: TextStyles.s16w400white,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blue),
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.blue),
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
