import 'package:momentum/momentum.dart';

import 'index.dart';

class SettingsModel extends MomentumModel<SettingsController> {
  SettingsModel(SettingsController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    SettingsModel(
      controller,
    ).updateMomentum();
  }
}
