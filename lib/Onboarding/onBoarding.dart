import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:midterm_project_3rdyear_1stsem/Favorites/dashboard.dart';

class onBoarding extends StatefulWidget {
  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {
  int activeIndex = 0;
  List listImg = ['images/img1.png', 'images/img2.png', 'images/img3.png'];

  Widget buildImage(String listImg, int index) => Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        color: Colors.white,
        child: Container(
          height: 999,
          width: 999,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(listImg), fit: BoxFit.contain),
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: listImg.length,
        axisDirection: Axis.horizontal,
        effect: WormEffect(
            spacing: 8.0,
            radius: 4.0,
            dotWidth: 24.0,
            dotHeight: 16.0,
            paintStyle: PaintingStyle.stroke,
            strokeWidth: 1.5,
            dotColor: Colors.pinkAccent,
            activeDotColor: Colors.pinkAccent),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("kcal",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 40),),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                reverse: false,
                viewportFraction: 1,
                enableInfiniteScroll: false,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount: listImg.length,
              itemBuilder: (context, index, realIndex) {
                final listImgs = listImg[index];
                return buildImage(listImgs, index);
              },
            ),
            const SizedBox(height: 32),
            if (activeIndex == 0)
              Column(
                children: <Widget>[
                  Center(
                      child: Text(
                    "Eat Healthy",
                    style: GoogleFonts.workSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                    ),
                  )),
                  Text(
                      "Maintaining good health should\n be the primary focus of everyone.",
                      style: GoogleFonts.workSans(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center),
                ],
              ),
            if (activeIndex == 1)
              Column(
                children: <Widget>[
                  Center(
                      child: Text("Healthy Recipes",
                          style: GoogleFonts.workSans(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                          ))),
                  Text(
                      "Browse thousands of healthy \nrecipes from all over the world",
                      style: GoogleFonts.workSans(
                          fontSize: 18.0,
                          color: Colors.black.withOpacity(.5),
                          fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center),
                ],
              ),
            if (activeIndex == 2)
              Column(children: <Widget>[
                Text(
                  "Track Your Health",
                  style: GoogleFonts.workSans(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Text("With amazing inbuilt tools you\n can track your progress",
                    style: GoogleFonts.workSans(
                        fontSize: 18.0,
                        color: Colors.black.withOpacity(.5),
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center)
              ]),
            Padding(
              padding: const EdgeInsets.fromLTRB(0,20,0,70),
              child: buildIndicator(),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(290, 70),
                    side: BorderSide(width: 100, color: Colors.white),
                    primary: Colors.pinkAccent,
                ),
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dash()),
                  );
                },
              ),
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text("Already Have An Account? ",style: TextStyle( fontSize: 19),),
                Text(
                  "Log in",
                  style: TextStyle(color: Colors.green, fontSize: 20),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
