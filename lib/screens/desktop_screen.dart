import 'package:flutter/material.dart';
import 'package:flutter_google_redesign/stylies/icons.dart';
import 'package:flutter_google_redesign/stylies/web_colors.dart';
import 'package:flutter_google_redesign/widgets/setting_part.dart';
import 'package:flutter_google_redesign/widgets/shortcut.dart';
import 'package:flutter_google_redesign/widgets/switch_button.dart';

class Desktop extends StatefulWidget {
  const Desktop({Key? key}) : super(key: key);

  @override
  _DesktopState createState() => _DesktopState();
}

class _DesktopState extends State<Desktop> {
  SizedBox sizeBoxWidth10 = SizedBox(width: 10);
  bool switchValue = false;
  String _chosenValue = "Yaqoob";
  String _languagechosenValue = "English Us";
  bool mouseRegion = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          switchValue ? DarkColor.KscaffoldColor : LightColor.KScaffoldColor,
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          menuIcon,
                          sizeBoxWidth10,
                          Text(
                            "Google Store",
                            style: TextStyle(
                              fontSize: 18,
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                          ),
                          sizeBoxWidth10,
                          Container(
                            height: 30,
                            width: 2,
                            color: Color(0xff698A91),
                          ),
                          sizeBoxWidth10,
                          locationIcon,
                          sizeBoxWidth10,
                          Text(
                            "Mexico",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 18,
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Light",
                            style: TextStyle(
                              fontSize: 18,
                              color: switchValue
                                  ? DarkColor.KtextColor
                                  : LightColor.KtextColor,
                            ),
                          ),
                          SwitchButton(
                            onChanged: (value) {
                              setState(() {
                                switchValue = value;
                              });
                            },
                            switchValue: switchValue,
                          ),
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
                                value: _chosenValue,
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
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 7,
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      googleIcon,
                      Material(
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
                            suffixIcon: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: switchValue
                                    ? DarkColor.KgoogleMicColor
                                    : LightColor.KgoogleMicColor,
                                child: googleMic,
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
                      Row(
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
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                Row(
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
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
