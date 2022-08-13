import 'package:easy_localization/easy_localization.dart';

extension StringLocalization on String {
  String get locale => this.tr();

  String? get isValidEmail =>
      contains(RegExp(r'[A-Z]')) ? null : "Email is not valid.";
}
