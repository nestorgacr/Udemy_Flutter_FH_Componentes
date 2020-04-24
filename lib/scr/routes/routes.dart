import 'package:flutter/material.dart';
import 'package:udemy_componentes/scr/pages/alert_page.dart';
import 'package:udemy_componentes/scr/pages/animated_container_page.dart';
import 'package:udemy_componentes/scr/pages/avatar_page.dart';
import 'package:udemy_componentes/scr/pages/card_page_page.dart';
import 'package:udemy_componentes/scr/pages/home_page.dart';
import 'package:udemy_componentes/scr/pages/input_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'inputs': (BuildContext context) => InputPage(),
  };
}
