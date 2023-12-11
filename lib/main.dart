import 'package:flutter/material.dart';
import 'package:tiktok/app.dart';

void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await initService();
  runApp(const MyApp());
}



