import 'package:momentum/momentum.dart';

import 'index.dart';

class SettingsController extends MomentumController<SettingsModel> {
  @override
  SettingsModel init() {
    return SettingsModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
