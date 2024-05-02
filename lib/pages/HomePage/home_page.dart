import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/controller/counter_controller.dart';
import 'package:theme/modals/counter_modal.dart';
import 'package:theme/pages/DetailsPage/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
        actions: [
          IconButton(
              onPressed: () {
                Route route = MaterialPageRoute(
                  builder: (context) => const DetailsPage(),
                );
                Navigator.push(context, route);
              },
              icon: const Icon(Icons.add)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Provider.of<CounterProvider>(context).getCuont.toString(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .decremrnt();
                  },
                  child: const Icon(Icons.remove),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .reset();
                  },
                  child: const Icon(Icons.lock_reset_rounded),
                ),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context, listen: false)
                        .increment();
                  },
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
