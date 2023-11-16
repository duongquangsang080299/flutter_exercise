import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class GlobalKeyConverter
    implements JsonConverter<GlobalKey<FormState>?, Map<String, dynamic>?> {
  const GlobalKeyConverter();

  @override
  GlobalKey<FormState>? fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      return GlobalKey<FormState>();
    }
    return null;
  }

  @override
  Map<String, dynamic>? toJson(GlobalKey<FormState>? key) {
    return null;
  }
}
