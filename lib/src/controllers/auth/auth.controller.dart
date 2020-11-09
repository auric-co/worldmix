import 'package:momentum/momentum.dart';

import 'index.dart';

class AuthController extends MomentumController<AuthModel> {
  @override
  AuthModel init() {
    return AuthModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
