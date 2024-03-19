import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/Modals/DashedBorderPainter.dart';
import 'package:myapp/Modals/constants.dart';
import '../core/utils/utils.dart';

class DogSecurityInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: Appbar(context, fem),

      body: Container(
        // k9securityqSq (405:891)
        padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 40*fem),
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Container(
                // frame63fkd (405:980)
                margin: EdgeInsets.fromLTRB(6.5*fem, 0*fem, 6.5*fem, 0*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouplnkrcA5 (TskqxNShxwxoL7CMhQLNkR)
                      padding: EdgeInsets.fromLTRB(13.5*fem, 0*fem, 13.5*fem, 23*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame52YJd (405:981)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            height: 43*fem,
                            decoration: BoxDecoration (

                            ),
                            child: Center(
                              child: Text(
                                // dogunitsk9gp9 (405:985)
                                'Dog Units -K9',
                                style: SafeGoogleFont (
                                  'Noto Sans',
                                  fontSize: 24*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3625*ffem/fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                          Center(
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 20),
                              width: MediaQuery.of(context).size.width,
                              child: CustomPaint(
                                painter: DashedBorderPainter(),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Container(
                            // dogunitork9securityisasecurity (405:988)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                            constraints: BoxConstraints (
                              maxWidth: 352*fem,
                            ),
                            child: Text(
                              'Dog Unit or K9 Security is a Security Service that uses highly trained dogs, also known as K9’s in American slang.\nA Dog Unit is made up of a SIA (Security Industry Authority) licenced dog-handler, a security-trained dog and a vehicle usually a car or a van equipped for the transportation and care of the dogs.',
                              style: SafeGoogleFont (
                                'Noto Sans',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.3625*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Container(
                      // component6Yzm (405:1052)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                      padding: EdgeInsets.fromLTRB(20*fem, 0*fem, 20*fem, 0*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame50EMo (405:1053)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  // photosNiu (405:1054)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                  child: Text(
                                    'Photos',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 22*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),
                                ),
                                Container(
                                  // viewmoreV2q (405:1055)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                  child: TextButton(onPressed: (){},child: Text(
                                    'View More',
                                    style: SafeGoogleFont (
                                      'Noto Sans',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3625*ffem/fem,
                                      color: Color(0xff005271),
                                    ),
                                  ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame47cdF (405:1056)
                            padding: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle19jC5 (405:1057)
                                    width: 110*fem,
                                    height: 100*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-19-K9B.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15*fem,
                                  ),
                                  Container(
                                    // rectangle20EPj (405:1058)
                                    width: 110*fem,
                                    height: 100*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-20-1Um.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15*fem,
                                  ),
                                  Container(
                                    // rectangle219Fo (405:1059)
                                    width: 110*fem,
                                    height: 100*fem,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      child: Image.asset(
                                        'assets/page-1/images/rectangle-21-cNu.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15*fem,
                                  ),
                                  Container(
                                    // rectangle22GLR (405:1060)
                                    width: 110*fem,
                                    height: 100*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      color: Color(0xffd9d9d9),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15*fem,
                                  ),
                                  Container(
                                    // rectangle23o5T (405:1061)
                                    width: 110*fem,
                                    height: 100*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      color: Color(0xffd9d9d9),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15*fem,
                                  ),
                                  Container(
                                    // rectangle24iTK (405:1062)
                                    width: 110*fem,
                                    height: 100*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(2.5*fem),
                                      color: Color(0xffd9d9d9),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // adogunitisoneofthemosteffectiv (405:1012)
                      margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                      constraints: BoxConstraints (
                        maxWidth: 354*fem,
                      ),
                      child: Text(
                        'A Dog Unit is one of the most effective forms of security. People in general and especially criminals have an instinctual fear of Security Dogs. From the logos on the van to sight of the patrolling dog everyone is warned to stay away.\nThe fear factor dogs instil make them much more efficient than basic security patrols, no one wants to get bitten by a big German Shepherd!\nA Dog unit is highly flexible form of Security, most effective performing residential security, street patrols and industrial sites. For larger events the SIA handler has no issue liaising with multiple security teams.',
                        style: SafeGoogleFont (
                          'Noto Sans',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3625*ffem/fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
  AppBar Appbar(BuildContext context, double fem) {
    return AppBar(
      bottom: PreferredSize(
        preferredSize: Size.zero,
        child: Container(
            decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: ThemeColorAppbarUnderline, // Choose your border color
                    width: 1.0, // Choose the border width
                  ),
                ))),
      ),
      backgroundColor: Colors.white,

      elevation: 8,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Image(
        image: AssetImage('assets/modules/images/logo.png'),
        height: 40,
        width: 52.35,
      ),
      actions: [
        Image(
          image: AssetImage('assets/modules/images/notification.png'),
          height: 30,
          width: 30,
        ),
        SizedBox(
          width: 30 * fem,
        ),
      ],
    );
  }
}