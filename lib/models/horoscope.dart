class Horoscope{
  String _horoscopeName;
  String _horoscopeDate;
  String _horoscopeDetail;
  String _horoscopeImage;

  Horoscope(this._horoscopeName, this._horoscopeDate, this._horoscopeDetail,
      this._horoscopeImage);

  String get horoscopeImage => _horoscopeImage;

  set horoscopeImage(String value) {
    _horoscopeImage = value;
  }

  String get horoscopeDetail => _horoscopeDetail;

  set horoscopeDetail(String value) {
    _horoscopeDetail = value;
  }

  String get horoscopeDate => _horoscopeDate;

  set horoscopeDate(String value) {
    _horoscopeDate = value;
  }

  String get horoscopeName => _horoscopeName;

  set horoscopeName(String value) {
    _horoscopeName = value;
  }
}