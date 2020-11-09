import 'package:momentum/momentum.dart';

import 'index.dart';

class RequestsController extends MomentumController<RequestsModel> {
  @override
  RequestsModel init() {
    return RequestsModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
