import 'package:momentum/momentum.dart';

import 'index.dart';

class MatchesController extends MomentumController<MatchesModel> {
  @override
  MatchesModel init() {
    return MatchesModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
