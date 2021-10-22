// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:fruit_app/Screen/testscreen/description_screen.dart';
import 'package:fruit_app/Screen/farmerhome_screen.dart';
import 'package:fruit_app/Screen/testscreen/favourite2_screen.dart';
import 'package:fruit_app/Screen/testscreen/favourite_screen.dart';
import 'package:fruit_app/Screen/home2_screen.dart';
import 'package:fruit_app/Screen/home_screen.dart';
import 'package:fruit_app/Screen/flash_screen.dart';
import 'package:fruit_app/Screen/details_screen.dart';
import 'package:fruit_app/Screen/orders_screen.dart';
import 'package:fruit_app/Screen/signin_screen.dart';
import 'package:fruit_app/Screen/login_screen.dart';
import 'package:fruit_app/Screen/transactionhistory_screen.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Screen/flash2_screen.dart';
import 'Screen/notification_screen.dart';

void main() => runApp(GetMaterialApp(

  home:FlashScreen(),
  debugShowCheckedModeBanner: false,

));
