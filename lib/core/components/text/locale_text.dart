import 'package:flutter/material.dart';
import '../../extension/string_extension.dart';

class LocaleText extends StatelessWidget {
  final String text;

  const LocaleText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(text.locale);
}
