import 'package:flutter/material.dart';
import 'package:momentum/momentum.dart';
import 'package:worldmix/src/services/client_db.dart';

void main() {
  runApp(momentum());
}

Momentum momentum() {
  return Momentum(
    key: UniqueKey(),
    restartCallback: main,
    controllers: [CounterController()],
      child: MyApp(),
    services: [
      ClientDB(),
    ],
    persistSave: (context, key, value) async {
      var sharedPref = await ClientDB.getByContext(context);
      var result = await sharedPref.setString(key, value);
      return result;
    },
    persistGet: (context, key) async {
      var sharedPref = await ClientDB.getByContext(context);
      var result = sharedPref.getString(key);
      return result;
    },
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Worldmix',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomeWidget(),
    );
  }
}

class CounterController extends MomentumController<CounterModel> {
  @override
  CounterModel init() {
    return CounterModel(
      this,
      value: 0,
    );
  }

  void increment() {
    var value = model.value; // grab the current value
    model.update(value: value + 1); // update state (rebuild widgets)
  }
}

class CounterModel extends MomentumModel<CounterController> {
  CounterModel(
    CounterController controller, {
    this.value,
  }) : super(controller);

  final int value;

  @override
  void update({
    int value,
  }) {
    CounterModel(
      controller,
      value: value ?? this.value,
    ).updateMomentum();
  }
}

class HomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worldmix'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            MomentumBuilder(
              controllers: [CounterController],
              builder: (context, snapshot) {
                var counter = snapshot<CounterModel>();
                return Text(
                  '${counter.value}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
      // we don't need to rebuild the increment button, we can skip the MomentumBuilder
      floatingActionButton: FloatingActionButton(
        onPressed: Momentum.controller<CounterController>(context).increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}