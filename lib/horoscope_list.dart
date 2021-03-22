import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/utils/strings.dart';

import 'models/horoscope.dart';

class HoroscopeList extends StatelessWidget {
  static List<Horoscope> allHoroscope = prepareDataSource();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: prepareList(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Image.asset("images/question2.png"),
        onPressed: (){
          Navigator.pushNamed(context, "/HoroscopeCalculator");
        },
      ),
    );
  }

  static List<Horoscope> prepareDataSource() {
    List<Horoscope> horoscopes = [];
    for(int i=0; i<12;i++){
      String horoscopeImage = Strings.HOROSCOPE_NAMES[i].toLowerCase()+".png";
      Horoscope additionHoroscope = Horoscope(Strings.HOROSCOPE_NAMES[i], Strings.HOROSCOPE_DATES[i], Strings.HOROSCOPE_DETAILS[i], horoscopeImage);
      horoscopes.add(additionHoroscope);
    }
    return horoscopes;
  }

  Widget prepareList() {
    return GridView.builder(itemBuilder: (BuildContext context, int index ){
      return listOnePeace(context, index);
    },
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300,
          childAspectRatio: 3/2,
          crossAxisSpacing: 0,
          mainAxisSpacing: 0),
    itemCount: allHoroscope.length,);
  }

  Widget listOnePeace(BuildContext context, int index) {
    Horoscope onHoroscope = allHoroscope[index];
    return  Container(
      color: RandomColorModel().getColor(),
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, "/HoroscopeDetail/$index");
        },
        title: Image.asset("images/"+onHoroscope.horoscopeImage, width: 80, height: 80,),
        subtitle:Text(onHoroscope.horoscopeName, style: TextStyle(fontSize: 24, color: Colors.black),textAlign: TextAlign.center,),
      ),
    );
  }
}
class RandomColorModel {
  Random random = Random();
  Color getColor() {
    return Color.fromARGB(random.nextInt(200), random.nextInt(200),
        random.nextInt(300), random.nextInt(300));
  }
}
