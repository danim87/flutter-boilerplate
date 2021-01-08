// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_interface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    name: json['name'] as String,
    age: json['age'] as int,
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
    };
