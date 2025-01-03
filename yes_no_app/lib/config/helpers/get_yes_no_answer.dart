import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infrastructure/models/yes_no_model.dart';

class GetYesNotAnswer {
  final String _apiUrl = "https://yesno.wtf/api";
  final Dio _dio = Dio();

  Future<Message> getAnswer() async {
    final response = await _dio.get(_apiUrl);

    final YesNoModel yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
