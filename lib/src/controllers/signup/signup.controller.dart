import 'package:momentum/momentum.dart';

import 'index.dart';

class SignupController extends MomentumController<SignupModel> {
  @override
  SignupModel init() {
    return SignupModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
