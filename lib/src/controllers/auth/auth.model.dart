import 'package:momentum/momentum.dart';

import 'index.dart';

class AuthModel extends MomentumModel<AuthController> {
  AuthModel(AuthController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    AuthModel(
      controller,
    ).updateMomentum();
  }
}
