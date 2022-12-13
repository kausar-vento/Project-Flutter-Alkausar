import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // hometf4 (1:360)
        padding: EdgeInsets.fromLTRB(20*fem, 60*fem, 23*fem, 21*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffefefe),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // userx98 (1:383)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 1*fem, 0*fem),
              width: double.infinity,
              height: 46*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // profiledWA (1:399)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134*fem, 0*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 7gE (1:400)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 15*fem, 0*fem),
                          width: 40*fem,
                          height: 40*fem,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100*fem),
                            child: Image.asset(
                              'assets/screens/images/.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          // group1000003474api (1:401)
                          width: 92*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                // hiandyJEv (1:402)
                                'Hi, Andy',
                                style: SafeGoogleFont (
                                  'Plus Jakarta Sans',
                                  fontSize: 18*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4444444444*ffem/fem,
                                  letterSpacing: 0.09*fem,
                                  color: Color(0xff111111),
                                ),
                              ),
                              Container(
                                // group1000003473BZc (1:403)
                                padding: EdgeInsets.fromLTRB(2.67*fem, 0*fem, 0*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // bxsmap11Gqx (1:405)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.67*fem, 0*fem),
                                      width: 10.67*fem,
                                      height: 13.33*fem,
                                      child: Image.asset(
                                        'assets/screens/images/bxs-map-1-1.png',
                                        width: 10.67*fem,
                                        height: 13.33*fem,
                                      ),
                                    ),
                                    Text(
                                      // netherlandsjjY (1:404)
                                      'Netherlands',
                                      style: SafeGoogleFont (
                                        'Plus Jakarta Sans',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.6666666667*ffem/fem,
                                        letterSpacing: 0.06*fem,
                                        color: Color(0xff78828a),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // actiondpv (1:384)
                    width: 46*fem,
                    height: 46*fem,
                    child: Image.asset(
                      'assets/screens/images/action.png',
                      width: 46*fem,
                      height: 46*fem,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24*fem,
            ),
            Container(
              // inputfieldW82 (1:361)
              margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
              width: 327*fem,
              height: 52*fem,
              decoration: BoxDecoration (
                color: Color(0xfff6f8fe),
                borderRadius: BorderRadius.circular(24*fem),
              ),
              child: Container(
                // frame1YqQ (I1:361;23:250)
                padding: EdgeInsets.fromLTRB(17.5*fem, 14*fem, 17*fem, 14*fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xfff6f8fe),
                  borderRadius: BorderRadius.circular(24*fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconsearchp2E (I1:361;23:251)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 9.3*fem, 0*fem),
                      width: 15.2*fem,
                      height: 15.54*fem,
                      child: Image.asset(
                        'assets/screens/images/icon-search.png',
                        width: 15.2*fem,
                        height: 15.54*fem,
                      ),
                    ),
                    Container(
                      // smalllabelregular12pxTqt (I1:361;23:253;23:197)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 172*fem, 0*fem),
                      child: Text(
                        'Search...',
                        style: SafeGoogleFont (
                          'Plus Jakarta Sans',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.5*ffem/fem,
                          letterSpacing: 0.08*fem,
                          color: Color(0xff9ca4ab),
                        ),
                      ),
                    ),
                    Container(
                      // filterWZG (I1:361;23:254)
                      width: 26*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/screens/images/filter.png',
                        width: 26*fem,
                        height: 18*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24*fem,
            ),
            Container(
              // servicekTc (1:362)
              margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 4*fem, 0*fem),
              width: double.infinity,
              height: 97*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // listdnJ (1:379)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 64*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouptnrsXsg (C6KeCEHpzreshVvEBvtNRs)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xfff6f8fe),
                            borderRadius: BorderRadius.circular(32*fem),
                          ),
                          child: Center(
                            // flight1o4W (1:382)
                            child: SizedBox(
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/screens/images/flight-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // airport63c (1:381)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                          child: Text(
                            'Airport',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5714285714*ffem/fem,
                              letterSpacing: 0.07*fem,
                              color: Color(0xff78828a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // listYgJ (1:375)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 64*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupmh4q2bU (C6KdzpTB7zNMQwR2iPMh4q)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xfff6f8fe),
                            borderRadius: BorderRadius.circular(32*fem),
                          ),
                          child: Center(
                            // car1Vzr (1:378)
                            child: SizedBox(
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/screens/images/car-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // taxiQM8 (1:377)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                          child: Text(
                            'Taxi',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5714285714*ffem/fem,
                              letterSpacing: 0.07*fem,
                              color: Color(0xff78828a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // listsVc (1:371)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                    width: 64*fem,
                    height: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupgczbaQ2 (C6KdoKnKxfU9Xxy1KJGcZB)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 16*fem, 16*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xfff6f8fe),
                            borderRadius: BorderRadius.circular(32*fem),
                          ),
                          child: Center(
                            // hotel12G2 (1:374)
                            child: SizedBox(
                              width: 32*fem,
                              height: 32*fem,
                              child: Image.asset(
                                'assets/screens/images/hotel-1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // hoteluqc (1:373)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                          child: Text(
                            'Hotel',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5714285714*ffem/fem,
                              letterSpacing: 0.07*fem,
                              color: Color(0xff78828a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // listy4n (1:363)
                    width: 64*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupo7skhFg (C6KddQuBC4FuvqUgTYo7sK)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          padding: EdgeInsets.fromLTRB(18.67*fem, 18.67*fem, 18.67*fem, 18.67*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            color: Color(0xfff6f8fe),
                            borderRadius: BorderRadius.circular(32*fem),
                          ),
                          child: Center(
                            // categoryxxJ (1:365)
                            child: SizedBox(
                              width: 26.67*fem,
                              height: 26.67*fem,
                              child: Image.asset(
                                'assets/screens/images/category.png',
                                width: 26.67*fem,
                                height: 26.67*fem,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // moreTPG (1:370)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                          child: Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.6666666667*ffem/fem,
                              letterSpacing: 0.06*fem,
                              color: Color(0xff78828a),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24*fem,
            ),
            Container(
              // frequentlyvisitedVqk (1:407)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
              width: 328*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // titleb86 (1:445)
                    margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 0*fem, 16*fem),
                    width: double.infinity,
                    height: 26*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frequentlyvisitedJ2W (1:446)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 111.5*fem, 0*fem),
                          child: Text(
                            'Frequently visited\n',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4444444444*ffem/fem,
                              letterSpacing: 0.09*fem,
                              color: Color(0xff111111),
                            ),
                          ),
                        ),
                        Container(
                          // sliderMFg (1:447)
                          margin: EdgeInsets.fromLTRB(0*fem, 9*fem, 0*fem, 9*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // dotSY2 (1:448)
                                width: 24*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(100*fem),
                                  color: Color(0xff009b8d),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // dotLNW (1:449)
                                width: 8*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                  color: Color(0xffd1d8dd),
                                ),
                              ),
                              SizedBox(
                                width: 8*fem,
                              ),
                              Container(
                                // dotEin (1:450)
                                width: 8*fem,
                                height: 8*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(4*fem),
                                  color: Color(0xffd1d8dd),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // itemsxen (1:408)
                    width: double.infinity,
                    height: 232*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // listsmk (1:409)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                          width: 156*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // group1000003468y46 (1:410)
                                padding: EdgeInsets.fromLTRB(120*fem, 13*fem, 8*fem, 13*fem),
                                width: double.infinity,
                                height: 150*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/screens/images/rectangle-22468-bg-L98.png',
                                    ),
                                  ),
                                ),
                                child: Align(
                                  // group1000003464cMx (1:412)
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: 28*fem,
                                    height: 28*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 96*fem),
                                      child: Image.asset(
                                        'assets/screens/images/group-1000003464-t4r.png',
                                        width: 28*fem,
                                        height: 28*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8*fem,
                              ),
                              Container(
                                // group1000003467Sbt (1:416)
                                width: 105*fem,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // tahitibeachMir (1:417)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                      child: Text(
                                        'Tahiti Beach',
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.5714285714*ffem/fem,
                                          letterSpacing: 0.07*fem,
                                          color: Color(0xff111111),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group1000003465pcS (1:418)
                                      padding: EdgeInsets.fromLTRB(2.33*fem, 0*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // bxsmap117bY (1:420)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.33*fem, 0*fem),
                                            width: 9.33*fem,
                                            height: 11.67*fem,
                                            child: Image.asset(
                                              'assets/screens/images/bxs-map-1-1-QtA.png',
                                              width: 9.33*fem,
                                              height: 11.67*fem,
                                            ),
                                          ),
                                          RichText(
                                            // polynesiafrenchnSn (1:419)
                                            text: TextSpan(
                                              style: SafeGoogleFont (
                                                'Plus Jakarta Sans',
                                                fontSize: 10*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.8*ffem/fem,
                                                letterSpacing: 0.05*fem,
                                                color: Color(0xff78828a),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: 'Polynesia, ',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.8*ffem/fem,
                                                    letterSpacing: 0.05*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: 'French ',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.8*ffem/fem,
                                                    letterSpacing: 0.05*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 8*fem,
                              ),
                              Container(
                                // group1000003466C2e (1:422)
                                width: double.infinity,
                                height: 22*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // tAN (1:423)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 57*fem, 0*fem),
                                      child: Text(
                                        '\$235',
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.5714285714*ffem/fem,
                                          letterSpacing: 0.07*fem,
                                          color: Color(0xff111111),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // group10000034299MC (1:424)
                                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // star2Qz (1:425)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                            width: 14*fem,
                                            height: 14*fem,
                                            child: Image.asset(
                                              'assets/screens/images/star-uWi.png',
                                              width: 14*fem,
                                              height: 14*fem,
                                            ),
                                          ),
                                          RichText(
                                            // type16sgW (1:426)
                                            text: TextSpan(
                                              style: SafeGoogleFont (
                                                'Plus Jakarta Sans',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.6666666667*ffem/fem,
                                                letterSpacing: 0.06*fem,
                                                color: Color(0xffffcd19),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: '4.4 ',
                                                ),
                                                TextSpan(
                                                  text: '(32)',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.6666666667*ffem/fem,
                                                    letterSpacing: 0.06*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // listwJz (1:427)
                          width: 156*fem,
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group10000034683sp (1:428)
                                padding: EdgeInsets.fromLTRB(120*fem, 13*fem, 8*fem, 13*fem),
                                width: double.infinity,
                                height: 150*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(8*fem),
                                  image: DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/screens/images/rectangle-22468-bg.png',
                                    ),
                                  ),
                                ),
                                child: Align(
                                  // group1000003464t7k (1:430)
                                  alignment: Alignment.topRight,
                                  child: SizedBox(
                                    width: 28*fem,
                                    height: 28*fem,
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 96*fem),
                                      child: Image.asset(
                                        'assets/screens/images/group-1000003464.png',
                                        width: 28*fem,
                                        height: 28*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupeovv7FQ (C6Ken8V1Vd3iBXeWvPEovV)
                                padding: EdgeInsets.fromLTRB(0*fem, 8*fem, 0*fem, 0*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // group1000003467nMY (1:434)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      width: 125*fem,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // stluciamountain44A (1:435)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                            child: Text(
                                              'St. Lucia Mountain',
                                              style: SafeGoogleFont (
                                                'Plus Jakarta Sans',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w600,
                                                height: 1.5714285714*ffem/fem,
                                                letterSpacing: 0.07*fem,
                                                color: Color(0xff111111),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group1000003465h78 (1:436)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                                            padding: EdgeInsets.fromLTRB(2.33*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // bxsmap11LQz (1:438)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.33*fem, 0*fem),
                                                  width: 9.33*fem,
                                                  height: 11.67*fem,
                                                  child: Image.asset(
                                                    'assets/screens/images/bxs-map-1-1-Zir.png',
                                                    width: 9.33*fem,
                                                    height: 11.67*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // southamericayyk (1:437)
                                                  'South America',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.8*ffem/fem,
                                                    letterSpacing: 0.05*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // group1000003466UQi (1:440)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                                      width: double.infinity,
                                      height: 22*fem,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // w3Q (1:441)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 59*fem, 0*fem),
                                            child: Text(
                                              '\$182',
                                              style: SafeGoogleFont (
                                                'Plus Jakarta Sans',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w700,
                                                height: 1.5714285714*ffem/fem,
                                                letterSpacing: 0.07*fem,
                                                color: Color(0xff111111),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // group1000003429oLW (1:442)
                                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 1*fem),
                                            height: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // stargv6 (1:443)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                                  width: 14*fem,
                                                  height: 14*fem,
                                                  child: Image.asset(
                                                    'assets/screens/images/star-f5k.png',
                                                    width: 14*fem,
                                                    height: 14*fem,
                                                  ),
                                                ),
                                                RichText(
                                                  // type16LUr (1:444)
                                                  text: TextSpan(
                                                    style: SafeGoogleFont (
                                                      'Plus Jakarta Sans',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 1.6666666667*ffem/fem,
                                                      letterSpacing: 0.06*fem,
                                                      color: Color(0xffffcd19),
                                                    ),
                                                    children: [
                                                      TextSpan(
                                                        text: '4.4 ',
                                                      ),
                                                      TextSpan(
                                                        text: '(41)',
                                                        style: SafeGoogleFont (
                                                          'Plus Jakarta Sans',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w600,
                                                          height: 1.6666666667*ffem/fem,
                                                          letterSpacing: 0.06*fem,
                                                          color: Color(0xff78828a),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24*fem,
            ),
            Container(
              // onbudgettourNZx (1:496)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
              width: 328*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // titleqyL (1:497)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // onbudgettourMwg (1:499)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 144*fem, 0*fem),
                          child: Text(
                            'On Budget Tour',
                            style: SafeGoogleFont (
                              'Plus Jakarta Sans',
                              fontSize: 18*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.4444444444*ffem/fem,
                              letterSpacing: 0.09*fem,
                              color: Color(0xff111111),
                            ),
                          ),
                        ),
                        Text(
                          // seeallChQ (1:498)
                          'See All',
                          style: SafeGoogleFont (
                            'Plus Jakarta Sans',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.5714285714*ffem/fem,
                            letterSpacing: 0.07*fem,
                            color: Color(0xff009b8d),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroup8nfwtq8 (C6KfTn1ca3tec3bpMP8nfw)
                    padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // listn9p (1:500)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                          width: double.infinity,
                          height: 86*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle22469fDc (1:501)
                                width: 86*fem,
                                height: 86*fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8*fem),
                                  child: Image.asset(
                                    'assets/screens/images/rectangle-22469-w1U.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupftu5jDU (C6KfdBubduQnehRBfsFtU5)
                                padding: EdgeInsets.fromLTRB(12*fem, 5*fem, 0*fem, 5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group1000003484Ccr (1:502)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43*fem, 0*fem),
                                      width: 112*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // group1000003483Gci (1:507)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // ledadubeachMu4 (1:508)
                                                  'Ledadu Beach',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.08*fem,
                                                    color: Color(0xff111111),
                                                  ),
                                                ),
                                                Text(
                                                  // days2nightsf94 (1:509)
                                                  '3 days 2 nights',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.6666666667*ffem/fem,
                                                    letterSpacing: 0.06*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group1000003465YCr (1:503)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                                            padding: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // bxsmap11PDU (1:505)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                                  width: 12*fem,
                                                  height: 15*fem,
                                                  child: Image.asset(
                                                    'assets/screens/images/bxs-map-1-1-Paz.png',
                                                    width: 12*fem,
                                                    height: 15*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // australia2nE (1:504)
                                                  'Australia',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.6666666667*ffem/fem,
                                                    letterSpacing: 0.06*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      // person8KU (1:510)
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.6666666667*ffem/fem,
                                          letterSpacing: 0.06*fem,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$20',
                                            style: SafeGoogleFont (
                                              'Plus Jakarta Sans',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5714285714*ffem/fem,
                                              letterSpacing: 0.07*fem,
                                              color: Color(0xff111111),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/Person',
                                            style: SafeGoogleFont (
                                              'Plus Jakarta Sans',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.6666666667*ffem/fem,
                                              letterSpacing: 0.06*fem,
                                              color: Color(0xff78828a),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // listf6S (1:511)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                          width: double.infinity,
                          height: 86*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle22469x5Y (1:512)
                                width: 86*fem,
                                height: 86*fem,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8*fem),
                                  child: Image.asset(
                                    'assets/screens/images/rectangle-22469.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupmgzr2bC (C6Kfy6W6TaSwTNLfJumGzR)
                                padding: EdgeInsets.fromLTRB(12*fem, 5*fem, 0*fem, 5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // group1000003484iU2 (1:513)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 0*fem),
                                      width: 127*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // group1000003483bXp (1:518)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                            width: double.infinity,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  // endigadabeachHQe (1:519)
                                                  'Endigada Beach',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 16*ffem,
                                                    fontWeight: FontWeight.w700,
                                                    height: 1.5*ffem/fem,
                                                    letterSpacing: 0.08*fem,
                                                    color: Color(0xff111111),
                                                  ),
                                                ),
                                                Text(
                                                  // days4nightsyoG (1:520)
                                                  '5 days 4 nights',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.6666666667*ffem/fem,
                                                    letterSpacing: 0.06*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            // group1000003465wX8 (1:514)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 54*fem, 0*fem),
                                            padding: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // bxsmap11o3Y (1:516)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                                  width: 12*fem,
                                                  height: 15*fem,
                                                  child: Image.asset(
                                                    'assets/screens/images/bxs-map-1-1-8P4.png',
                                                    width: 12*fem,
                                                    height: 15*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // australiaepr (1:515)
                                                  'Australia',
                                                  style: SafeGoogleFont (
                                                    'Plus Jakarta Sans',
                                                    fontSize: 12*ffem,
                                                    fontWeight: FontWeight.w500,
                                                    height: 1.6666666667*ffem/fem,
                                                    letterSpacing: 0.06*fem,
                                                    color: Color(0xff78828a),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    RichText(
                                      // personY9Y (1:521)
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'Plus Jakarta Sans',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.6666666667*ffem/fem,
                                          letterSpacing: 0.06*fem,
                                          color: Color(0xff000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: '\$25',
                                            style: SafeGoogleFont (
                                              'Plus Jakarta Sans',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 1.5714285714*ffem/fem,
                                              letterSpacing: 0.07*fem,
                                              color: Color(0xff111111),
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/Person',
                                            style: SafeGoogleFont (
                                              'Plus Jakarta Sans',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.6666666667*ffem/fem,
                                              letterSpacing: 0.06*fem,
                                              color: Color(0xff78828a),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}