import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/responsive_dashbaord_app.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kReleaseMode,
      builder: (context) => ResponsiveDashbaordApp(),
    ),
  );
}
