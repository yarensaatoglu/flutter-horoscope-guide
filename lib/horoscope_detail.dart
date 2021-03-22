import 'package:flutter/material.dart';
import 'package:flutter_horoscope_guide/horoscope_list.dart';
import 'package:flutter_horoscope_guide/models/horoscope.dart';

class HoroscopeDetail extends StatelessWidget {
  int index;
  Horoscope selectedHoroscope;
  HoroscopeDetail(this.index);
  @override
  Widget build(BuildContext context) {
    selectedHoroscope = HoroscopeList.allHoroscope[index];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            primary: true,
            backgroundColor: Colors.blueGrey,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("images/"+selectedHoroscope.horoscopeImage,fit: BoxFit.cover,),
            ),
            title: Text(selectedHoroscope.horoscopeName+ " Details"),
            centerTitle: true,
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Text(selectedHoroscope.horoscopeDetail,style: TextStyle(fontSize: 18, color: Colors.grey),),
            ),
          )
        ],
      )
    );
  }
}