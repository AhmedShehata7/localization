//import 'package:flutter/material.dart';
//import 'package:easy_localization/easy_localization.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';
//
//void main() => runApp(EasyLocalization(child: MyApp()));
//
//class MyApp extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    var data=EasyLocalizationProvider.of(context).data;
//    return EasyLocalizationProvider(
//      data: data,
//      child: MaterialApp(
//        title: 'Flutter Demo',
//        theme: ThemeData(
//          primarySwatch: Colors.blue,
//        ),
//        home: MyHomePage(),
//        localizationsDelegates: [
//          GlobalMaterialLocalizations.delegate,
//          GlobalWidgetsLocalizations.delegate,
//          EasylocaLizationDelegate(
//            path: "assets",
//            locale: data.locale,
//          ),
//        ],
//        supportedLocales: [
//          Locale("en","US"), Locale("ar","AR")],
//        locale: data.savedLocale,
//
//
//
//      ),
//
//    );
//  }
//}
//
//class MyHomePage extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);
//
//
//  final String title;
//
//  @override
//  _MyHomePageState createState() => _MyHomePageState();
//}
//
//class _MyHomePageState extends State<MyHomePage> {
//
//
//  @override
//  Widget build(BuildContext context) {
//
//    var data =EasyLocalizationProvider.of(context).data;
//    return EasyLocalizationProvider(
//      data: data,
//      child: Scaffold(
//        appBar: AppBar(
//          title: Text(AppLocalizations.of(context).tr("title")),
//        ),
//        body: SafeArea(
//            child: Column(
//              children: <Widget>[
//                Text(AppLocalizations.of(context).tr("content")),
//                OutlineButton(
//                  onPressed: (){
//                    data.changeLocale(Locale("ar","AR"));
//                  },
//                  child: Text(AppLocalizations.of(context).tr("button text")),
//
//                ),
//              ],
//            )
//        ),
//      ),
//    );
//  }
//}
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(EasyLocalization(child: MyApp()));
class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var data=EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
        localizationsDelegates: [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          EasylocaLizationDelegate(
            path: "assets",
            locale: data.locale,
          ),
        ],
        supportedLocales: [
          Locale("en","US"), Locale("ar","AR")],
        locale: data.savedLocale,



      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    var data =EasyLocalizationProvider.of(context).data;
    return EasyLocalizationProvider(
      data: data,
      child: Scaffold(

        appBar: AppBar(


          title: Text(AppLocalizations.of(context).tr("title")),
        ),
        body: SafeArea(
            child: Column(
              children: <Widget>[
                Text(AppLocalizations.of(context).tr("content")),
                OutlineButton(
                  onPressed: (){
                    setState(() {
                      data.changeLocale(Locale("ar","AR"));
                    });

                  },
                  child: Text("اضغط هنا"),

                ),
                OutlineButton(
                  onPressed: (){
                    setState(() {
                      data.changeLocale(Locale("en","US"));
                    });

                  },
                  child: Text("click "),


                ),
              ],
            )
        ),
      ),
    );
  }
}