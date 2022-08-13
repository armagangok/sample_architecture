class ImageConstants {
  ImageConstants._();
  static final instance = ImageConstants._();

  String get logo => toPng("");
  String toPng(String name) => "assets/image/$name";

}
