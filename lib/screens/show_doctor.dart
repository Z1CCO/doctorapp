import 'package:doctor_app/screens/payment.dart';
import 'package:doctor_app/theme/app_colors.dart';
import 'package:doctor_app/theme/text_style.dart';
import 'package:doctor_app/widgets/my_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShowDoctor extends StatelessWidget {
  const ShowDoctor({super.key});

  @override
  Widget build(BuildContext context) {
    void getAppounment() {
      showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) => Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    margin: const EdgeInsets.all(8),
                    width: 42,
                    height: 5,
                    decoration: BoxDecoration(
                      color: Color(0xffE7E7E7),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                Center(
                  child: SizedBox(
                    width: 120,
                    height: 120,
                    child: Image.asset(
                      'assets/images/like.png',
                      color: AppColors.blue,
                    ),
                  ),
                ),
                SizedBox(height: 60),
                Text(
                  'Thanks You! Your',
                  style: TextStyles.s17w500black,
                ),
                Text(
                  'Appointment Created.',
                  style: TextStyles.s17w500black,
                ),
                SizedBox(height: 12),
                Text(
                    style: TextStyles.s16w400grey,
                    'You booked an appoinment with dr.'),
                Text(
                    style: TextStyles.s16w400grey,
                    'Kawsar Ahmed on sep 21, at 10:00am'),
                SizedBox(height: 108),
                MyElevatedButtonWithLogin(
                    height: 56,
                    onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => Payment(),
                          ),
                        ),
                    text: 'Request For Appointment'),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: AppColors.blue,
      body: Stack(
        children: [
          ListView(
            children: [
              Container(
                color: AppColors.blue,
                padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Icon(
                              Icons.arrow_back_sharp,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                        Text(
                          'Doctor Detail',
                          style: TextStyles.s18w500white,
                        ),
                        SizedBox(
                          width: 45,
                          height: 45,
                        ),
                      ],
                    ),
                    SizedBox(height: 12),
                    Container(
                      width: 112,
                      height: 121,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/woman.png',
                          ),
                        ),
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                    SizedBox(height: 27),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      spacing: 42,
                      children: List.generate(
                        3,
                        (index) {
                          List titles = [
                            ['assets/svg/like.svg', '150+', 'Patient'],
                            ['assets/svg/crown.svg', '10 years+', 'Experiance'],
                            ['assets/svg/star.svg', '4.9', 'Rating'],
                          ];
                          return Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(12),
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: Color(0xff39B0FF),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: SvgPicture.asset(
                                  titles[index][0],
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                titles[index][1],
                                style: TextStyles.s15w500white,
                              ),
                              SizedBox(height: 2),
                              Text(
                                titles[index][2],
                                style: TextStyles.s7w400white,
                              ),
                              SizedBox(height: 28),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(45, 65),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 24),
                      Text(
                        'Dr. Kawsar Ahmed',
                        style: TextStyles.s20w500black,
                      ),
                      Text(
                        'Cardiologist- Cumilla Madical Collage',
                        style: TextStyles.s10w400black,
                      ),
                      SizedBox(height: 2),
                      Row(
                        spacing: 2,
                        mainAxisSize: MainAxisSize.min,
                        children: List.generate(
                          5,
                          (index) =>
                              SvgPicture.asset('assets/svg/staryellow.svg'),
                        ),
                      ),
                      SizedBox(height: 19),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'About Doctor',
                          style: TextStyles.s16w400black,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        """Dr. Kawsar Ahmed is the top most Cardiologist
specialist in Cumilla Medical Collage Hospital At
Cumilla. He achived several awards foe his
wonderful confriution in his own field. He is
avaliable for privet consulatation. He achived
several awards foe his wonderful confriution in
his own field. He is avaliable for privet
consulatation. """,
                        style: TextStyles.s14w400black,
                      ),
                      SizedBox(height: 12),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Recent comments',
                          style: TextStyles.s16w400black,
                        ),
                      ),
                      SizedBox(height: 12),
                      ListTile(
                        leading: CircleAvatar(
                          backgroundColor: AppColors.black,
                        ),
                        title: Row(
                          spacing: 2,
                          mainAxisSize: MainAxisSize.min,
                          children: List.generate(
                            5,
                            (index) =>
                                SvgPicture.asset('assets/svg/staryellow.svg'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: MyElevatedButtonWithLogin(
                  height: 56,
                  onTap: () {
                    getAppounment();
                  },
                  text: 'Get Appointment'),
            ),
          ),
        ],
      ),
    );
  }
}
