import 'package:momentum/momentum.dart';

import 'index.dart';

class MatchesModel extends MomentumModel<MatchesController> {
  MatchesModel(MatchesController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    MatchesModel(
      controller,
    ).updateMomentum();
  }
}
