import 'package:auto_route/auto_route.dart';
import '/views/views.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true, path: '/'),
    AutoRoute(page: ButtonPage, path: '/buttons'),
    AutoRoute(page: CardsPage, path: '/cards'),
    AutoRoute(page: DialogPage, path: '/dialog'),
    AutoRoute(page: SnackbarPage, path: '/snackbar'),
    AutoRoute(page: SelectPage, path: '/select'),
    AutoRoute(page: DatepickerPage, path: '/datepicker'),
    AutoRoute(page: TimepickerPage, path: '/timepicker'),
    AutoRoute(page: ExpanderPage, path: '/expander'),
  ],
)
class $AppRouter {}
