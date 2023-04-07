// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../../views/views.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ButtonRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ButtonPage(),
      );
    },
    CardsRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CardsPage(),
      );
    },
    DialogRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DialogPage(),
      );
    },
    SnackbarRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SnackbarPage(),
      );
    },
    SelectRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SelectPage(),
      );
    },
    DatepickerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.DatepickerPage(),
      );
    },
    TimepickerRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.TimepickerPage(),
      );
    },
    ExpanderRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.ExpanderPage(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          ButtonRoute.name,
          path: '/buttons',
        ),
        _i2.RouteConfig(
          CardsRoute.name,
          path: '/cards',
        ),
        _i2.RouteConfig(
          DialogRoute.name,
          path: '/dialog',
        ),
        _i2.RouteConfig(
          SnackbarRoute.name,
          path: '/snackbar',
        ),
        _i2.RouteConfig(
          SelectRoute.name,
          path: '/select',
        ),
        _i2.RouteConfig(
          DatepickerRoute.name,
          path: '/datepicker',
        ),
        _i2.RouteConfig(
          TimepickerRoute.name,
          path: '/timepicker',
        ),
        _i2.RouteConfig(
          ExpanderRoute.name,
          path: '/expander',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.ButtonPage]
class ButtonRoute extends _i2.PageRouteInfo<void> {
  const ButtonRoute()
      : super(
          ButtonRoute.name,
          path: '/buttons',
        );

  static const String name = 'ButtonRoute';
}

/// generated route for
/// [_i1.CardsPage]
class CardsRoute extends _i2.PageRouteInfo<void> {
  const CardsRoute()
      : super(
          CardsRoute.name,
          path: '/cards',
        );

  static const String name = 'CardsRoute';
}

/// generated route for
/// [_i1.DialogPage]
class DialogRoute extends _i2.PageRouteInfo<void> {
  const DialogRoute()
      : super(
          DialogRoute.name,
          path: '/dialog',
        );

  static const String name = 'DialogRoute';
}

/// generated route for
/// [_i1.SnackbarPage]
class SnackbarRoute extends _i2.PageRouteInfo<void> {
  const SnackbarRoute()
      : super(
          SnackbarRoute.name,
          path: '/snackbar',
        );

  static const String name = 'SnackbarRoute';
}

/// generated route for
/// [_i1.SelectPage]
class SelectRoute extends _i2.PageRouteInfo<void> {
  const SelectRoute()
      : super(
          SelectRoute.name,
          path: '/select',
        );

  static const String name = 'SelectRoute';
}

/// generated route for
/// [_i1.DatepickerPage]
class DatepickerRoute extends _i2.PageRouteInfo<void> {
  const DatepickerRoute()
      : super(
          DatepickerRoute.name,
          path: '/datepicker',
        );

  static const String name = 'DatepickerRoute';
}

/// generated route for
/// [_i1.TimepickerPage]
class TimepickerRoute extends _i2.PageRouteInfo<void> {
  const TimepickerRoute()
      : super(
          TimepickerRoute.name,
          path: '/timepicker',
        );

  static const String name = 'TimepickerRoute';
}

/// generated route for
/// [_i1.ExpanderPage]
class ExpanderRoute extends _i2.PageRouteInfo<void> {
  const ExpanderRoute()
      : super(
          ExpanderRoute.name,
          path: '/expander',
        );

  static const String name = 'ExpanderRoute';
}
