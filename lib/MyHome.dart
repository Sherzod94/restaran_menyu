import 'package:Menyu/lang_provider.dart';
import 'package:Menyu/menu_page/dishes/dishes_page.dart';
import 'package:Menyu/menu_page/dishes2/dishes_page2.dart';
import 'package:Menyu/menu_page/salads/salads_page.dart';
import 'package:Menyu/menu_page/the_drinks/the_drinks_page.dart';
import 'package:Menyu/lang.dart';
import 'package:Menyu/myinfo.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'menu_page/disert/disert_page.dart';
import 'menu_page/shashlik/shashlik_page.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  get FlutterNativeSplash => null;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    // await Future.delayed(const Duration(seconds: 1));
    // FlutterNativeSplash.remove();
  }

  final List<Widget> _pages = [
    DishesPage(),
    DishesPage2(),
    SaladsPage(),
    ShashlikPage(),
    Disert_page(),
    TheDrinksPaga(),
  ];

  List<Lang> _langs = [
    Lang("uz", true),
    Lang("ru", false),
    Lang("en", false),
  ];

  int _activeLangIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            return myMenu(constraints);
          }),
          Expanded(child: _pages[_selectedIndex])
        ],
      ),
    );
  }

  Widget myMenu(BoxConstraints constraints) {
    final langProvider = Provider.of<LongProvider>(context, listen: false);
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: constraints.maxHeight),
        child: IntrinsicHeight(
          child: NavigationRail(
            minWidth: 52,
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
                if (index == 0) {
                  langProvider.isItemSelected(false);
                }
              });
            },
            groupAlignment: 0.5,
            selectedLabelTextStyle:
                const TextStyle(color: Colors.white, fontSize: 28),
            unselectedLabelTextStyle:
                const TextStyle(color: Colors.white70, fontSize: 22),
            labelType: NavigationRailLabelType.all,
            backgroundColor: Color(0xff2A5270),
            selectedIndex: _selectedIndex,
             leading: langBuild(),
            destinations: [

              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("meals".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("meals2".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("salads".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("shashlik".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("dessert".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                  quarterTurns: -1,
                  child: Text("drinks".tr()),
                ),
              ),
              NavigationRailDestination(
                icon: SizedBox(),
                label: RotatedBox(
                    quarterTurns: 4,
                    child: IconButton(
                      onPressed: () {
                       Navigator.push(context,MaterialPageRoute(builder: (context)=>MyInfo()));
                      },
                      icon: Image.asset("assets/images/typing.png"),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void setCurrentLangButton() {
    switch (context.locale.toString()) {
      case 'uz_UZ':
        {
          _langs.forEach((element) {
            if (element.name == 'uz') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
      case 'ru_RU':
        {
          _langs.forEach((element) {
            if (element.name == 'ru') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
      case 'en_EN':
        {
          _langs.forEach((element) {
            if (element.name == 'en') {
              element.isActive = true;
            } else {
              element.isActive = false;
            }
          });
        }
        break;
    }
  }

  Widget langBuild() {
    final langProvider = Provider.of<LongProvider>(context, listen: false);
    setCurrentLangButton();
    return Column(
      children: [
        SizedBox(height: 120),
        ToggleButtons(
          fillColor: Colors.transparent,
          borderColor: Colors.transparent,
          selectedBorderColor: Colors.transparent,
          selectedColor: Colors.transparent,
          direction: Axis.vertical,
          children: <Widget>[
            langButton(_langs[0]),
            langButton(_langs[1]),
            langButton(_langs[2]),
          ],
          onPressed: (int index) {
            setState(() {
              _langs.forEach((e) {
                e.isActive = false;
              });
              switch (index) {
                case 0:
                  {
                    context.setLocale(Locale('uz', 'UZ'));
                    langProvider.langChanged();
                  }
                  break;
                case 1:
                  {
                    context.setLocale(Locale("ru", "RU"));
                    langProvider.langChanged();
                  }
                  break;
                case 2:
                  {
                    context.setLocale(Locale("en", "EN"));
                    langProvider.langChanged();
                  }
                  break;
              }

              _langs[index].isActive = true;
            });
          },
          isSelected: _langs.map((e) => e.isActive).toList(),
        )
      ],
    );
  }

  Widget langButton(Lang lang) {
    return Container(
      width: 46,
      height: 46,
      child: Center(
        child: Text(
          lang.name,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            lang.isActive ? const Color(0xff206498) : const Color(0xff2A5270),
      ),
    );
  }
}
