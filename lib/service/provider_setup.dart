import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:show_room_apps/module/auth/service/sign_in_provider.dart';

List<SingleChildStatelessWidget> providers = [
  ...independentServices,
  ...dependentServices,
];

List<SingleChildStatelessWidget> independentServices = [
  ChangeNotifierProvider(create: (context) => SignInProvider()),
];

// for proxy provider
List<SingleChildStatelessWidget> dependentServices = [];

abstract class BaseProvider implements SingleChildStatelessWidget {}
