import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:show_room_apps/module/auth/service/sign_in_provider.dart';
import 'package:show_room_apps/module/auth/service/sign_up_provider.dart';
import 'package:show_room_apps/module/dashboard/service/dashboard_provider.dart';

List<SingleChildStatelessWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildStatelessWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => SignInProvider()),
  ChangeNotifierProvider(create: (context) => SignUpProvider()),
  ChangeNotifierProvider(create: (context) => DashboardProvider()),
];

// for proxy provider
List<SingleChildStatelessWidget> dependentServices = [];

abstract class BaseProvider implements SingleChildStatelessWidget {}
