import 'package:app_counter/auth_provider.dart';
import 'package:app_counter/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'login.dart';
import 'kilimanjaro.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<Counter>(context, listen: false);
    final accountProvider = Provider.of<AuthProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo HomePage'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  radius: 34,
                  backgroundImage: AssetImage('asset/1.png'),
                ),
                accountName: Text(accountProvider.user.name),
                accountEmail: Text(accountProvider.user.email))
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                'You have pushed the button this many times: ${counterProvider.counter}'),
            InkWell(
              child: Text(
                '${counterProvider.counter}',
                style: Theme.of(context).textTheme.headline4,
              ),
              onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MountKilimanjaro())),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counterProvider.increment();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
