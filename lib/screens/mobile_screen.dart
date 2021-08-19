import 'package:flutter/material.dart';
import 'package:flutter_google_redesign/stylies/icons.dart';
import 'package:flutter_google_redesign/stylies/web_colors.dart';
import 'package:flutter_google_redesign/widgets/setting_part.dart';
import 'package:flutter_google_redesign/widgets/shortcut.dart';
import 'package:flutter_google_redesign/widgets/switch_button.dart';

class MobileScreen extends StatefulWidget {
  const MobileScreen({Key? key}) : super(key: key);

  @override
  _MobileScreenState createState() => _MobileScreenState();
}

class _MobileScreenState extends State<MobileScreen> {
  SizedBox sizeBoxWidth10 = SizedBox(width: 10);
  bool switchValue = false;
  String _chosenValue = "Yaqoob";
  String _languagechosenValue = "English Us";
  bool mouseRegion = false;

  Widget buildUserAccount() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Material(
        elevation: 2,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: 30,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color:
                switchValue ? DarkColor.KsearchColor : LightColor.KsearchColor,
            borderRadius: BorderRadius.circular(30),
          ),
          child: DropdownButton<String>(
            dropdownColor: switchValue
                ? DarkColor.KscaffoldColor
                : LightColor.KScaffoldColor,
            value: _chosenValue,
            icon: Icon(
              Icons.expand_more,
              color: switchValue ? DarkColor.KtextColor : LightColor.KtextColor,
            ),
            elevation: 0,
            underline: Container(
              color: Color(0xff212834),
            ),
            style: TextStyle(
              color: switchValue ? DarkColor.KtextColor : LightColor.KtextColor,
            ),
            items: <String>[
              "Yaqoob",
              "Aqeel",
              "Insaf",
              "Tariq",
            ].map<DropdownMenuItem<String>>(
              (String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(3.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "images/userprofile.jpg",
                          ),
                        ),
                      ),
                      Text(value),
                    ],
                  ),
                );
              },
            ).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _chosenValue = newValue!;
              });
            },
          ),
        ),
      ),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: menuIcon,
      actions: [
        Flexible(
          child: SwitchButton(
            onChanged: (value) {
              setState(() {
                switchValue = value;
              });
            },
            switchValue: switchValue,
          ),
        ),
        Flexible(
          child: buildUserAccount(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width <= 200
        ? Container()
        : Scaffold(
            backgroundColor: switchValue
                ? DarkColor.KscaffoldColor
                : LightColor.KScaffoldColor,
            appBar: buildAppbar(),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Image.asset(
                      "images/google.png",
                      scale: 2.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Material(
                      elevation: 2,
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(30),
                      child: TextFormField(
                        style: TextStyle(
                          color: switchValue
                              ? DarkColor.KtextColor
                              : LightColor.KtextColor,
                        ),
                        decoration: InputDecoration(
                          hintText: "Buscar con google",
                          hintStyle: TextStyle(
                            color: switchValue
                                ? DarkColor.KhintTextColor
                                : LightColor.KtextColor,
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Icon(
                              Icons.search,
                              color: Colors.blue,
                            ),
                          ),
                          fillColor: switchValue
                              ? DarkColor.KsearchColor
                              : LightColor.KsearchColor,
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(
                              30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: switchValue
                            ? DarkColor.KgoogleMicColor
                            : LightColor.KgoogleMicColor,
                        child: googleMic,
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ShortCut(
                          child: youtubeIcon,
                          switchValue: switchValue,
                        ),
                        ShortCut(
                          child: mailIcon,
                          switchValue: switchValue,
                        ),
                        ShortCut(
                          child: driveIcon,
                          switchValue: switchValue,
                        ),
                        ShortCut(
                          child: meetIcon,
                          switchValue: switchValue,
                        ),
                        ShortCut(
                          child: languageIcon,
                          switchValue: switchValue,
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.info,
                            color: switchValue
                                ? DarkColor.KtextColor
                                : LightColor.KtextColor,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.settings,
                            color: switchValue
                                ? DarkColor.KtextColor
                                : LightColor.KtextColor,
                          ),
                        ),
                        sizeBoxWidth10,
                        Material(
                          elevation: 2,
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(30),
                          child: Container(
                            height: 35,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: switchValue
                                  ? DarkColor.KsearchColor
                                  : LightColor.KsearchColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: DropdownButton<String>(
                              dropdownColor: switchValue
                                  ? DarkColor.KscaffoldColor
                                  : LightColor.KScaffoldColor,
                              value: _languagechosenValue,
                              icon: Icon(
                                Icons.expand_more,
                                color: switchValue
                                    ? DarkColor.KtextColor
                                    : LightColor.KtextColor,
                              ),
                              elevation: 0,
                              underline: Container(
                                color: Color(0xff212834),
                              ),
                              style: TextStyle(
                                color: switchValue
                                    ? DarkColor.KtextColor
                                    : LightColor.KtextColor,
                              ),
                              items: <String>[
                                "English Us",
                                "Email UK",
                                "Hindi",
                                "Balochi",
                              ].map<DropdownMenuItem<String>>(
                                (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                },
                              ).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  _languagechosenValue = newValue!;
                                });
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SettingPart(
                          mouseRegion: mouseRegion,
                          onEnter: (event) {
                            setState(() {
                              mouseRegion = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              mouseRegion = false;
                            });
                          },
                          switchValue: switchValue,
                          text: "Privacidad",
                        ),
                        sizeBoxWidth10,
                        SettingPart(
                          mouseRegion: mouseRegion,
                          onEnter: (event) {
                            setState(() {
                              mouseRegion = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              mouseRegion = false;
                            });
                          },
                          switchValue: switchValue,
                          text: "Condiciones",
                        ),
                        sizeBoxWidth10,
                        SettingPart(
                          mouseRegion: mouseRegion,
                          onEnter: (event) {
                            setState(() {
                              mouseRegion = true;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              mouseRegion = false;
                            });
                          },
                          switchValue: switchValue,
                          text: "Preferencias",
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
  }
}
