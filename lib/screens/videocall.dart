import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VideoCall extends StatelessWidget {
  const VideoCall({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height - 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/images/doctorman.png',
                    ),
                  ),
                ),
                child:
                    Image.asset(fit: BoxFit.cover, 'assets/images/slade.png'),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 36,
                children: List.generate(3, (index) {
                  List items = [
                    [
                      'assets/svg/mic.svg',
                      const Color.fromARGB(117, 65, 70, 74)
                    ],
                    ['assets/svg/call2.svg', const Color(0xffEB5757)],
                    [
                      'assets/svg/voice.svg',
                      const Color.fromARGB(117, 65, 70, 74)
                    ],
                  ];
                  return Container(
                    padding: EdgeInsets.all(12),
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: items[index][1]),
                    child: SvgPicture.asset(
                      items[index][0],
                    ),
                  );
                }),
              ),
              SizedBox(height: 25)
            ],
          ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 115,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  '15:18',
                  style: TextStyles.s15w500white,
                ),
                Text(
                  'Customer',
                  style: TextStyles.s18w500white,
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(right: 25, top: 40),
              width: 90,
              height: 110,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 122, 188, 232),
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage('assets/images/doctorman.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
