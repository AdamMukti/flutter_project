import 'package:flutter/material.dart';
import 'package:flutter_project/src/utility/theme_color.dart';
import 'package:flutter_project/src/utility/theme_text.dart';
import 'package:flutter_project/src/views/listMahasiswa.dart';
import 'package:flutter_project/src/views/notFoundPage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Halo, Selamat datang di',
                style: textMuted,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'SISTEM INFORMASI\nMANAJEMEN\nTUGAS AKHIR',
                style: textHeading,
              ),
            ),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListMahasiswa(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primary,
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff51C3FF).withOpacity(0.5),
                      blurRadius: 30,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'Mahasiswa',
                            style: textMuted.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            '1234',
                            style: textHeading.copyWith(
                              color: Colors.white,
                              fontSize: 48,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(24),
                          child: Image.asset(
                            'assets/icon/arrow_right_white.png',
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotFoundPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFF5E9),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Dosen',
                                  style: textMuted.copyWith(
                                    color: Color(0xffD9C0AB),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  '1234',
                                  style: textHeading.copyWith(
                                    color: Color(0xffD29B74),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 24, bottom: 24),
                                child: Image.asset(
                                  'assets/icon/arrow_right_dark.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotFoundPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffEBFAFF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Proposal',
                                  style: textMuted.copyWith(
                                    color: Color(0xffB6D2D8),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  '1234',
                                  style: textHeading.copyWith(
                                    color: Color(0xff5DABC1),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 24, bottom: 24),
                                child: Image.asset(
                                  'assets/icon/arrow_right_dark.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotFoundPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF7F4FF),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Kolokium',
                                  style: textMuted.copyWith(
                                    color: Color(0xffBEB3CE),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  '1234',
                                  style: textHeading.copyWith(
                                    color: Color(0xff9073B4),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 24, bottom: 24),
                                child: Image.asset(
                                  'assets/icon/arrow_right_dark.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NotFoundPage(),
                        ),
                      );
                    },
                    child: Container(
                      height: 160,
                      width: MediaQuery.of(context).size.width * 0.42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffF4FFFB),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 24,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  'Yudisium',
                                  style: textMuted.copyWith(
                                    color: Color(0xffB6D0C5),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 24),
                                child: Text(
                                  '1234',
                                  style: textHeading.copyWith(
                                    color: Color(0xff6FABA1),
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    right: 24, bottom: 24),
                                child: Image.asset(
                                  'assets/icon/arrow_right_dark.png',
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
