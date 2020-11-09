import 'package:momentum/momentum.dart';

import 'index.dart';

class SignupModel extends MomentumModel<SignupController> {
  SignupModel(SignupController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    SignupModel(
      controller,
    ).updateMomentum();
  }
}
