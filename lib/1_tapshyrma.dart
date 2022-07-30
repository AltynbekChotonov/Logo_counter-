import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int san = 0;

  void kemityy() {
    setState(() {
      san--;
    });
  }

  void koshuu() {
    setState(() {
      san++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 77, 80, 82),
        title: const Text('App LOGO counter'),
        actions: const [Icon(Icons.search)],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 100),
            const FlutterLogo(
              size: 200,
            ),
            const Text('Бул менин биринчи тапшырмам'),
            Card(
              color: Color.fromARGB(255, 77, 80, 82),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 100),
                child: Text(
                  '$san',
                  style: const TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 255, 248, 246)),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: kemityy,
                  child: const Icon(Icons.remove),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: koshuu,
                  child: const Icon(Icons.add),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
