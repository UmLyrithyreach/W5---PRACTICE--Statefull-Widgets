// ignore_for_file: unused_import

import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:w5_statefulwidget/EX-2/ex_2_step_1_correction.dart';
import 'package:w5_statefulwidget/EX-3/ex_3_start.dart';
import 'package:w5_statefulwidget/bonus/bonus.dart';
import 'EX-1/ex_1.dart';

void main() => runApp(
  DevicePreview(builder: (context) => MainApp(), enabled: !kReleaseMode,)
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BonusEx(),
    );
  }
}
