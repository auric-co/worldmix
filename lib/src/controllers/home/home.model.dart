import 'package:momentum/momentum.dart';

import 'index.dart';

class HomeModel extends MomentumModel<HomeController> {
  HomeModel(HomeController controller) : super(controller);

  // TODO: add your final properties here...

  @override
  void update() {
    HomeModel(
      controller,
    ).updateMomentum();
  }
}
