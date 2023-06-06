import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weatherProvider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  WeatherProvider? providerF;
  WeatherProvider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<WeatherProvider>(context, listen: false);
    providerT = Provider.of<WeatherProvider>(context, listen: true);

    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff262C51),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff262C51),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Weather",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'Lily',
              letterSpacing: 1,
              fontSize: 20),
        ),
        actions: [
          Icon(
            Icons.more_horiz,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 20,
                height: 50,
              ),
              Icon(
                Icons.search,
                color: Colors.white54,
                size: 18,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Search for a City or airpot",
                style: TextStyle(
                    color: Colors.white54,
                    fontFamily: 'Lily',
                    letterSpacing: 1,
                    fontSize: 13),
              )
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                width: 310,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/Rectangle 5.svg",width: 310,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 320,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "19°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 60),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "H:24°   L:18°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Montreal, Canada",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                                alignment: Alignment(0, -1.80),
                                child: Image.asset('assets/images/Moon.png'))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 310,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/Rectangle 5.svg",width: 310,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 320,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "20°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 60),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "H:21°   L:19°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Toranto, Canada",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                                alignment: Alignment(0, -1.80),
                                child: Image.asset('assets/images/wind.png'))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 200,
                width: 310,
                margin: EdgeInsets.all(10),
                child: Stack(
                  children: [
                    Center(
                      child: SvgPicture.asset(
                        "assets/images/Rectangle 5.svg",width: 310,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 320,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15,top: 8),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "13°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 60),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "H:16°   L:8°",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        "Tokyo, Japan",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Lily',
                                            letterSpacing: 1,
                                            fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            Align(
                                alignment: Alignment(0, -1.80),
                                child: Image.asset('assets/images/sun.png'))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }

}
