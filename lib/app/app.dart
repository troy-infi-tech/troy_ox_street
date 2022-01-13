import 'package:stacked/stacked_annotations.dart';
import 'package:troy_ox_street/services/http_service.dart';
import 'package:troy_ox_street/pages/home/home_view.dart';

@StackedApp(logger: StackedLogger(), routes: [
  MaterialRoute(page: HomeView, initial: true),
], dependencies: [
  LazySingleton(classType: HttpService)
])
class App {}
