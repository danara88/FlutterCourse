import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Counter Functions'),
              // leading: IconButton(
              //     onPressed: () {}, icon: const Icon(Icons.refresh_rounded)),
              actions: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        clickCounter = 0;
                      });
                    },
                    icon: const Icon(Icons.refresh_rounded)),
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '$clickCounter',
                    style: const TextStyle(
                        fontSize: 160, fontWeight: FontWeight.w100),
                  ),
                  Text(clickCounter == 1 ? 'Click' : 'Clicks',
                      style: const TextStyle(fontSize: 25))
                ],
              ),
            ),
            floatingActionButton: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomButton(
                    icon: Icons.refresh_outlined,
                    onPressed: () {
                      setState(() {
                        clickCounter = 0;
                      });
                    }),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                    icon: Icons.exposure_minus_1,
                    onPressed: () {
                      if (clickCounter == 0) return;
                      setState(() {
                        clickCounter--;
                      });
                    }),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                    icon: Icons.plus_one,
                    onPressed: () {
                      setState(() {
                        clickCounter++;
                      });
                    })
              ],
            )));
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      elevation: 5,
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
