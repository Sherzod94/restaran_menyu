import 'package:Menyu/lang_provider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'meal2.dart';

class Detailspage1 extends StatefulWidget {
  final int _selectedItemIndex;

  Detailspage1(this._selectedItemIndex, {Key? key}) : super(key: key);

  @override
  State<Detailspage1> createState() => _Detailspage1State();
}

class _Detailspage1State extends State<Detailspage1> {
  @override
  Widget build(BuildContext context) {
    final langProvider = Provider.of<LongProvider>(context, listen: false);

   return Consumer<LongProvider>(builder: (context, data, child) {
     return Container(
       decoration: const BoxDecoration(
         image: DecorationImage(
           fit: BoxFit.cover,
           image: AssetImage("assets/images/2.png"),
         ),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Padding(
               padding: EdgeInsets.only(left: 10, top: 20),
               child: IconButton(
                 onPressed: () {
                   setState(() {
                     langProvider.isItemSelected(false);
                   });
                 },
                 icon: const Icon(
                   Icons.arrow_back,
                   color: Colors.white,
                   size: 40,
                 ),
               )),
           Expanded(child: myBody()),
         ],
       ),
     );
   });


  }

  Widget myBody() {
    return Container(
      margin: const EdgeInsets.only(top: 30, right: 40),
      color: Colors.white,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topLeft,
        children: [
          details(getMeals1()[widget._selectedItemIndex]),
          Positioned(
              top: -80,
              right: -40,
              child: Image.asset(
                getMeals1()[widget._selectedItemIndex].imageUrl!,
                //   height: 320,
                width: 250,
              ))
        ],
      ),
    );
  }

  Widget details(Meal1 meals) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 14),
      child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 180,
              ),
              Text(getMeals1()[widget._selectedItemIndex].name!,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(height: 14),
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
                        getMeals1()[widget._selectedItemIndex].time!,
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
                        getMeals1()[widget._selectedItemIndex].ingCount!.toString() +
                            " инг",
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
                        "assets/images/ic_3.png",
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(width: 6),
                      Text(
                        getMeals1()[widget._selectedItemIndex].kkal!,
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
              SizedBox(height: 14),
              Text(
                getMeals1()[widget._selectedItemIndex].detalis!,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  List<Meal1> getMeals1() {
    switch (context.locale.toString()) {
      case 'uz_UZ':
        {
          return Meal1.mealsUz;
        }
      case 'ru_RU':
        {
          return Meal1.mealsRu;
        }
      case 'en_EN':
        {
          return Meal1.mealsEn;
        }
      default:
        return Meal1.mealsUz;
    }
  }


}
