// // Poner todas las propiedades de la respuesta de la API
// class YesNoModel {
//   String answer;
//   bool forced;
//   String image;

//   YesNoModel({required this.answer, required this.forced, required this.image});

//   // Creacion de una instancia de YesNoModel
//   // Mapea la respuesta de la API
//   factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
//       answer: json['answer'], forced: json['forced'], image: json['image']);
// }

// To parse this JSON data, do
//
//     final yesNoModel = yesNoModelFromJson(jsonString);

import 'package:yes_no_app/domain/entities/message.dart';

class YesNoModel {
  final String answer;
  final bool forced;
  final String image;

  YesNoModel({
    required this.answer,
    required this.forced,
    required this.image,
  });

  factory YesNoModel.fromJsonMap(Map<String, dynamic> json) => YesNoModel(
        answer: json["answer"],
        forced: json["forced"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "answer": answer,
        "forced": forced,
        "image": image,
      };

  Message toMessageEntity({FromWho fromWho = FromWho.him}) =>
      Message(text: answer, fromWho: fromWho, imageUrl: image);
}