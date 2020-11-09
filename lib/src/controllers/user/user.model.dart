import 'package:momentum/momentum.dart';

import 'index.dart';

class UserModel extends MomentumModel<UserController> {
  UserModel(UserController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    UserModel(
      controller,
    ).updateMomentum();
  }
}
