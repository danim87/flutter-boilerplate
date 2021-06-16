import 'package:json_annotation/json_annotation.dart';

part 'data_interface.g.dart';

@JsonSerializable()
class Data {
  final String name;
  final int age;

  Data({
    required this.name,
    required this.age,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
