
import 'package:stroll/data_layer/models/helper_models/error_model.dart';
import 'package:stroll/data_layer/models/response_models/api_response.dart';
import 'package:stroll/data_layer/repository/base_repo.dart';
import 'package:stroll/utils/helpers/logger.dart';

class ApiRepo extends BaseRepo {
  static ApiRepo? _instance;

  ApiRepo._();

  static ApiRepo get instance {
    _instance ??= ApiRepo._();

    return _instance!;
  }

  //? H E L P E R
  @override
  dynamic extractMessage(response) {
    if (response.statusCode?.startsWith('2') == true) {
      log.i("___________Response toMap: $response");
      return ApiResponse.fromMap(response: response);
    } else {
      return AppError.errorObject(response);
    }
  }
}
