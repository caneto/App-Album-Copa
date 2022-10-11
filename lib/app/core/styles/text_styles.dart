
class TextStyles {
  static TextStyles? _instance;
  TextStyles._();

  static TextStyles get instance {
    _instance??= TextStyles._();
    return _instance!;
  }

  String get primaryFont => 'Poppins';
  String get secundartFont => 'MPlus1P';

}