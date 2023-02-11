import 'package:flutter/material.dart';

import 'notifications.service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationService().setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Local Notifications'),
      ),
      body: Center(
        child: Column(children: [
          ElevatedButton(
              onPressed: () {
                NotificationService().showLocalNotification(
                  'การแจ้งเตือน',
                  'ทดสอบการแจ้งเตือนของแอพ',
                );
              },
              child: const Text('Notifications'))
        ]),
      ),
    );
  }
}
