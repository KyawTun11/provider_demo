import 'package:flutter/material.dart';
import 'package:p_dome/providers/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(context.watch<HomeProvider>().count.toString(),style: TextStyle(fontSize: 40)),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: ()=> context.read<HomeProvider>().increment(),
              child: Text('Increment'),
            ),
            SizedBox(height: 28),
            ElevatedButton(
              onPressed: ()=> context.read<HomeProvider>().decrement(),
              child: Text('Decrement'),
            ),
          ],
        ),
      ),
    );
  }
}
