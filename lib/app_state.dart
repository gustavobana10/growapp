import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _safras = [];
  List<String> get safras => _safras;
  set safras(List<String> value) {
    _safras = value;
  }

  void addToSafras(String value) {
    _safras.add(value);
  }

  void removeFromSafras(String value) {
    _safras.remove(value);
  }

  void removeAtIndexFromSafras(int index) {
    _safras.removeAt(index);
  }

  void updateSafrasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _safras[index] = updateFn(_safras[index]);
  }

  void insertAtIndexInSafras(int index, String value) {
    _safras.insert(index, value);
  }

  List<String> _tiposSafras = [];
  List<String> get tiposSafras => _tiposSafras;
  set tiposSafras(List<String> value) {
    _tiposSafras = value;
  }

  void addToTiposSafras(String value) {
    _tiposSafras.add(value);
  }

  void removeFromTiposSafras(String value) {
    _tiposSafras.remove(value);
  }

  void removeAtIndexFromTiposSafras(int index) {
    _tiposSafras.removeAt(index);
  }

  void updateTiposSafrasAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _tiposSafras[index] = updateFn(_tiposSafras[index]);
  }

  void insertAtIndexInTiposSafras(int index, String value) {
    _tiposSafras.insert(index, value);
  }
}
