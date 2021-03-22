import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_detail.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';
import 'horoscope_calculator.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: "/HoroscopeList",
      routes: {
        '/': (context) => HoroscopeList(),
        '/HoroscopeList': (context) => HoroscopeList(),
        '/HoroscopeCalculator': (context) => HoroscopeCalculator(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> pathIndex = settings.name.split("/");
        if(pathIndex[1]=='HoroscopeDetail'){
          return MaterialPageRoute(builder: (context)=> HoroscopeDetail(int.parse(pathIndex[2])));
        }
        return null;
      },
      debugShowCheckedModeBanner: false,
      title: "Horoscope Guide",
      theme: ThemeData(
        primarySwatch: Colors.orange,
        fontFamily: 'Open Sans'
      ),
      //home: HoroscopeList(), //initialRoute is defined
    );
  }
}
