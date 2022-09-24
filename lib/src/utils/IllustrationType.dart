import 'dart:io' show File;

import 'package:flutter/widgets.dart';

class IllustrationType {
  final String imageLink;
  IllustrationType(this.imageLink);
  Image get image => Image.file(File(imageLink));
}