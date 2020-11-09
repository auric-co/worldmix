import 'package:momentum/momentum.dart';

import 'index.dart';

class RequestsModel extends MomentumModel<RequestsController> {
  RequestsModel(RequestsController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    RequestsModel(
      controller,
    ).updateMomentum();
  }
}
