import 'package:event_brite_app/constants.dart';
import 'package:event_brite_app/screens/home_page/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../reusable_widgets/log_in_button.dart';
import 'log_in_page2.dart';

class LogInPage1 extends StatelessWidget {
  const LogInPage1({super.key});
  //VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 12, top: 40),
              child: Text(
                'See your favourites\nin one place',
                style: TextStyle(
                  //decorationThickness: 500,
                  fontSize: 32,
                  fontFamily: 'Neue_Plak',
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
              child: Opacity(
                opacity: 0.7,
                child: Text(
                  'Log in to see your favourites',
                  style: TextStyle(
                      //fontFamily: 'Neue Plak',
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen(
                            selectedIndex: 1,
                          );
                        },
                      ),
                    );
                  },
                  child: const Text(
                    'Explore events',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color.fromRGBO(54, 89, 227, 1),
                        fontWeight: FontWeight.bold),
                  )),
            ),
            const SizedBox(
              height: 125,
            ),
            Stack(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.4,
                  //height:350,
                  //width: 900,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Image(
                        image: AssetImage('assets/images/Circle.jpeg'),
                        height: 400,
                      ),
                    ],
                  ),
                ),
                //SizedBox(height: 200,),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.327,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 25, top: 60),
                            child: Icon(
                              FontAwesomeIcons.heart,
                              size: 180,
                              color: const Color.fromARGB(255, 181, 181, 181)
                                  .withOpacity(0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomButton(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return LogInPage2();
                          }));
                        },
                        child:Center(child: Text( 'Log in', style: TextStyle(fontWeight:FontWeight.bold,color: primaryColor,fontSize: 17 ),)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}