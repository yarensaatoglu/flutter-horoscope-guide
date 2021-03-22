import 'package:flutter/material.dart';

class HoroscopeCalculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return StateHoroscopeCalculator();
  }
}

class StateHoroscopeCalculator  extends State<HoroscopeCalculator>{
  final List<int> daylist = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31];
  final List<String> monthList = <String>['January', 'February',  'March', 'April','May','June','July','August','September','October','November','December'];
  String selectedItem;
  int selectedInt;
  String result = " ";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/backk.png"),
            fit: BoxFit.cover,
          )
        ),
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(16.0),
                  child: Container(
                    padding: EdgeInsets.only(left:16,right: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 3),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: DropdownButton(
                      underline: SizedBox(),
                      hint: Text("Select Month", style: TextStyle(color: Colors.white),),
                      dropdownColor: Colors.black,
                      icon: Icon(Icons.arrow_drop_down_outlined),
                      isExpanded: true,
                      style: TextStyle(color: Colors.white, fontSize: 24),
                      value: selectedItem,
                      onChanged: (newValue){
                        setState(() {
                          selectedItem = newValue;
                        });
                      },
                      items: monthList.map((valueItem){
                        return DropdownMenuItem(
                          value: valueItem,
                          child: Text(valueItem),
                        );
                      }).toList(),
                    ),
                  )
              ),
              Padding(padding: EdgeInsets.all(16.0),
                child: Container(
                  padding: EdgeInsets.only(left:16,right: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 3),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: DropdownButton(
                    underline: SizedBox(),
                    hint: Text("Select Day", style: TextStyle(color: Colors.white),),
                    dropdownColor: Colors.black,
                    icon: Icon(Icons.arrow_drop_down_outlined),
                    isExpanded: true,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                    value: selectedInt,
                    onChanged: (newValue){
                      setState(() {
                        selectedInt = newValue;
                      });
                    },
                    items: daylist.map((valueItem){
                      return DropdownMenuItem(
                        value: valueItem,
                        child: Text(valueItem.toString()),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.all(16.0),
                child: RaisedButton(onPressed: (){
                  setState(() {
                    Calculate();
                  });
                },
                  color: Colors.blueGrey,
                  child: Text("Calculate",style: TextStyle(fontSize: 24, color: Colors.white),),
                ),
              ),
              Text(result,style: TextStyle(fontSize: 24, color: Colors.white)),
              Padding(padding: EdgeInsets.all(16.0),
                child: RaisedButton(onPressed: (){
                  Navigator.pushNamed(context, "/HoroscopeList");
                },
                  color: Colors.blueGrey,
                  child: Text("Horoscope List",style: TextStyle(fontSize: 24, color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Calculate() {
    if((selectedItem == 'February' && selectedInt > 28) || (selectedItem == 'April' && selectedInt == 31) || (selectedItem == 'June' && selectedInt == 31)|| (selectedItem == 'September' && selectedInt == 31) || (selectedItem == 'November' && selectedInt == 31)){
       result = "You made the wrong choice, try again...";
    }
    else{
      if((selectedItem == 'March' && selectedInt > 21 ) ||  (selectedItem == 'April' && selectedInt <21)){
        result = "Aries";
      }
      else if((selectedItem == 'April' && selectedInt > 21 ) ||  (selectedItem == 'May' && selectedInt <22)){
        result = "Taurus";
      }
      else if((selectedItem == 'May' && selectedInt > 21 ) ||  (selectedItem == 'June' && selectedInt <22)){
        result = "Gemini";
      }
      else if((selectedItem == 'June' && selectedInt > 21 ) ||  (selectedItem == 'July' && selectedInt <22)){
        result = "Cancer";
      }
      else if((selectedItem == 'July' && selectedInt > 21 ) ||  (selectedItem == 'August' && selectedInt <22)){
        result = "Leo";
      }
      else if((selectedItem == 'August' && selectedInt > 21 ) ||  (selectedItem == 'September' && selectedInt <22)){
        result = "Virgo";
      }
      else if((selectedItem == 'September' && selectedInt > 21 ) ||  (selectedItem == 'October' && selectedInt <22)){
        result = "Libra";
      }
      else if((selectedItem == 'October' && selectedInt > 21 ) ||  (selectedItem == 'November' && selectedInt <22)){
        result = "Scorpio";
      }
      else if((selectedItem == 'November' && selectedInt > 21 ) ||  (selectedItem == 'December' && selectedInt <22)){
        result = "Sagittarius";
      }
      else if((selectedItem == 'December' && selectedInt > 21 ) ||  (selectedItem == 'January' && selectedInt <22)){
        result = "Capricorn";
      }
      else if((selectedItem == 'January' && selectedInt > 21 ) ||  (selectedItem == 'February' && selectedInt <22)){
        result = "Aquarius";
      }
      else if((selectedItem == 'February' && selectedInt > 21 ) ||  (selectedItem == 'March' && selectedInt <22)){
        result = "Pisces";
      }
    }
  }
}
