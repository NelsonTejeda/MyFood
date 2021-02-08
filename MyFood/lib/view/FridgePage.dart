import 'package:MyFoodLogin/view/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:MyFoodLogin/view/FreezerPage.dart';
import 'package:MyFoodLogin/view/PantryPage.dart';
import 'package:MyFoodLogin/view/PerishablesPage.dart';
import 'package:MyFoodLogin/view/DairyPage.dart';
import 'package:MyFoodLogin/view/ProducePage.dart';
import 'MeatPage.dart';

class FridgePage extends StatefulWidget {
  FridgePage({Key key}) : super(key: key);

  @override
  _FridgePageState createState() => _FridgePageState();
}

class _FridgePageState extends State<FridgePage> {
  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        //Container that fills up the whole page to place the background image
        body: Container(
      constraints: BoxConstraints.expand(),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/fridge_page_background1.png"),
              fit: BoxFit.fill)),
      child: Column(
        children: <Widget>[
          //Top of page
          SizedBox(
            height: 0,
          ),

          Row(
            children: [
              //Back button

              InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(width: 3),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      margin: EdgeInsets.only(
                          left: 20, bottom: 50, top: 10, right: 10),
                      width: 60,
                      height: 30,
                      child: Center(
                        child: Text(
                          "Back",
                          textAlign: TextAlign.center,
                          style: new TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      )))
            ],
          ),

          //First Row
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            //Freezer Box

            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FreezerPage())),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/ice.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  width: deviceWidth * .4,
                  height: deviceHeight * .24,
                  margin: EdgeInsets.only(left: deviceWidth * .05),
                  child: Center(
                      child: Text(
                    "Freezer",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                )),

            //Meat Box
            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MeatPage())),
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/meat1.png'),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.red[300],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                  width: 164,
                  height: 164,
                  margin:
                      EdgeInsets.only(left: 25, bottom: 7, top: 0, right: 0),
                  child: Center(
                      child: Text(
                    "Meat",
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                        fontSize: 27,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
                ))
          ]),

          // Second Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //Produce Box
              InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProducePage())),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/produce.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.green[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    margin:
                        EdgeInsets.only(left: 30, bottom: 0, top: 36, right: 0),
                    width: 164,
                    height: 164,
                    child: Center(
                        child: Text(
                      "Produce",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  )),

              //Pantry Box
              InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PantryPage())),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/can.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.brown[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    margin:
                        EdgeInsets.only(left: 25, bottom: 0, top: 36, right: 0),
                    width: 164,
                    height: 164,
                    child: Center(
                        child: Text(
                      "Pantry",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //All Food Box
              InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AllFoodPage())),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/bread.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.orange[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    margin:
                        EdgeInsets.only(left: 30, bottom: 0, top: 44, right: 0),
                    width: 164,
                    height: 164,
                    child: Center(
                        child: Text(
                      "AllFood",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 27,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )),
                  )),

              //Dairy Box
              InkWell(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DairyPage())),
                  child: Container(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/milk.png'),
                          fit: BoxFit.fill,
                        ),
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )),
                    margin:
                        EdgeInsets.only(left: 25, bottom: 0, top: 44, right: 0),
                    width: 164,
                    height: 164,
                    child: Center(
                        child: Text(
                      "Dairy",
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                          fontSize: 27,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    )),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
