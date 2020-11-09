import 'package:momentum/momentum.dart';

import 'index.dart';

class HomeController extends MomentumController<HomeModel> {
  @override
  HomeModel init() {
    return HomeModel(
      this,
      // TODO: specify initial values here...
    );
  }
}
