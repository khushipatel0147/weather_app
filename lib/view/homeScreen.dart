import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/provider/weatherProvider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
  WeatherProvider? providerF;
  WeatherProvider? providerT;
  @override
  void initState() {
    super.initState();
    Provider.of<WeatherProvider>(context,listen: false).getWeather();
  }
  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<WeatherProvider>(context, listen: false);
    providerT = Provider.of<WeatherProvider>(context, listen: true);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff262C51),
      body: Center(
        child: FutureBuilder(
          future: providerF!.getWeather(),
          builder: (context, snapshot) {
            if(snapshot.hasError)
              {
                return Text("${snapshot.hasError}");
              }
            else if(snapshot.hasData)
              {
                return Column(
                  children: [
                    SizedBox(height: 30),
                    Text(
                      "${providerF!.weatherData.name}",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lily',
                          letterSpacing: 1,
                          fontSize: 40),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${providerF!.weatherData.main?.temp}°",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lily',
                          letterSpacing: 1,
                          fontSize: 70),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${providerF!.weatherData.clouds}",
                      style: TextStyle(
                          color: Colors.white54,
                          fontFamily: 'Lily',
                          letterSpacing: 1,
                          fontSize: 20),
                    ),
                    SizedBox(height: 3),
                    Text(
                      "${providerF!.weatherData.coord?.lat}  ${providerF!.weatherData.coord?.lon}",
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lily',
                          letterSpacing: 1,
                          fontSize: 15),
                    ),
                    SizedBox(height: 30),
                    Container(
                      alignment: Alignment.center,
                      height: 528,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: Image.asset(
                              "assets/images/02.png",
                              height: 350,
                              width: 350,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 325,
                              width: 395,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    topRight: Radius.circular(50)),
                                color: Color(0xff262C51).withOpacity(0.8),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(height: 25),
                                  Expanded(
                                      child: ListView.builder(
                                        itemBuilder: (context, index) => myiteam(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 5,
                                      )),
                                  SizedBox(height: 15),
                                  InkWell(
                                    onTap: () {

                                      Navigator.pushNamed(context,'second');

                                    },
                                    child: SvgPicture.asset(
                                      'assets/images/back.svg',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
            else
              {
                return CircularProgressIndicator();
              }
          },
        )
      ),
    ));
  }

  Widget myiteam() {
    return Row(
      children: [
        Center(
          child: Container(
            margin: EdgeInsets.all(5),
            height: 250,
            width: 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),  color: Color(
                0xff818DDCFF).withOpacity(0.3)),
child: Column(
  children: [
    SizedBox(height: 10),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        "12 AM",
        style: TextStyle(
            color: Colors.white54,
            fontFamily: 'Lily',
            letterSpacing: 1,
            fontSize: 12,fontWeight: FontWeight.bold),
      ),
    ),
    SizedBox(height: 10),
    Image.asset('assets/images/Moon.png',height: 35,),
    Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        "90°",
        style: TextStyle(
            color: Colors.white54,
            fontFamily: 'Lily',
            letterSpacing: 1,
            fontSize: 15,fontWeight: FontWeight.bold),
      ),
    ),
    SizedBox(height: 10),
  ],
),
          ),
        )
      ],
    );
  }
}
