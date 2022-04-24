import 'dart:io';
import 'package:Menyu/lang_provider.dart';
import 'package:Menyu/menu_page/disert/detalis_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'meal.dart';

class Disert_page extends StatefulWidget {
  Disert_page({Key? key}) : super(key: key);

  @override
  State<Disert_page> createState() => _Disert_pageState();
}

class _Disert_pageState extends State<Disert_page> {

  int _selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LongProvider>(context, listen: false);
    return WillPopScope(
      onWillPop: () {
        langProvider.getItemSelected()
            ? setState(() {
          langProvider.isItemSelected(false);
        })
            : exit(0);

        return Future.value(false);
      },
      child: Consumer<LongProvider>(
        builder: (context, data, child) {
          return SafeArea(
            child: (langProvider.getItemSelected())
                ? Detailspage4(_selectedItemIndex)
                : Scaffold(
              body: LayoutBuilder(
                builder:
                    (BuildContext context, BoxConstraints constraints) {
                  return mainUI( constraints);
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget mainUI(BoxConstraints constraints) {
    var axisCountr = 1;
    var current = constraints.maxWidth;

    if(current <=500){
      axisCountr=1;
    }else if(current>500 && current < 800){
      axisCountr=2;
    }else if(current >800 && current < 1000){
      axisCountr=3;
    }else{
      axisCountr=4;
    }


    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "info".tr(),
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xff2A5270),
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
                padding: EdgeInsets.only(top: 30, bottom: 20),
                scrollDirection: Axis.vertical,
                itemCount: getMeals().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: axisCountr,
                    mainAxisExtent: 350,
                    crossAxisSpacing: 50,
                    mainAxisSpacing: 30),
                itemBuilder: (BuildContext context, int index) {
                  return meal(getMeals()[index], context, index);
                }),
          )
        ],
      ),
    );
  }

  List<Meal> getMeals() {
    switch (context.locale.toString()) {
      case 'uz_UZ':
        {
          return Meal.mealsUz;
        }
      case 'ru_RU':
        {
          return Meal.mealsRu;
        }
      case 'en_EN':
        {
          return Meal.mealsEn;
        }
      default:
        return Meal.mealsUz;
    }
  }

  Widget meal(Meal meal, context, index) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [

        Card(
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          elevation: 48,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Color(meal.bannerColor!),
            ),
            height: 360,
            width: 230,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 48),
                  Row(
                    children: [
                      Container(
                        width: 2,
                        height: 20,
                        color: const Color(0xff00195C),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        meal.type!,
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  SizedBox(
                    height: 56,
                    child: Text(
                      meal.name!,
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff1E2022),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${'cost'.tr()}:',
                        style: TextStyle(
                          color: Color(0xff52616B),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        meal.cost!,
                        style: TextStyle(
                          color: Color(0xff52616B),
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ic_1.png",
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 6),
                          Text(
                            meal.time!,
                            style: TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset(
                            "assets/images/ic_2.png",
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(width: 6),
                          Text(
                            meal.ingCount!.toString() + " инг",
                            style: TextStyle(
                              color: Color(0xff52616B),
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          "assets/images/btn_plus.png",
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          height: 50,
                          child: ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                        BorderRadius.circular(16.0))),
                                backgroundColor:
                                MaterialStateProperty.all<Color>(
                                    Color(0xff175BBF))),
                            onPressed: () {
                              setState(() {
                                final langProvider = Provider.of<LongProvider>(context, listen: false);
                                langProvider.isItemSelected(true);
                                _selectedItemIndex = index;
                              });
                            },
                            child: Text("more".tr()),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: -26,
            right: -4,
            child: Image.asset(
              meal.imageUrl!,
              height: 170,
              width: 170,
            ))
      ],
    );
  }
}
