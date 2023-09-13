import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '/core/auth/auth_routes.dart';
import '/core/context/tb_context.dart';
import '/core/init/init_routes.dart';
import '/modules/alarm/alarm_routes.dart';
import '/modules/asset/asset_routes.dart';
import '/modules/audit_log/audit_logs_routes.dart';
import '/modules/customer/customer_routes.dart';
import '/modules/dashboard/dashboard_routes.dart';
import '/modules/device/device_routes.dart';
import '/modules/home/home_routes.dart';
import '/modules/profile/profile_routes.dart';
import '/modules/tenant/tenant_routes.dart';
import '/utils/ui_utils_routes.dart';

class ThingsboardAppRouter {
  final router = FluroRouter();
  late final _tbContext = TbContext(router);

  ThingsboardAppRouter() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
      var settings = context!.settings;
      return Scaffold(
        appBar: AppBar(title: Text('Not Found')),
        body: Center(child: Text('Route not defined: ${settings!.name}')),
      );
    });
    InitRoutes(_tbContext).registerRoutes();
    AuthRoutes(_tbContext).registerRoutes();
    UiUtilsRoutes(_tbContext).registerRoutes();
    HomeRoutes(_tbContext).registerRoutes();
    ProfileRoutes(_tbContext).registerRoutes();
    AssetRoutes(_tbContext).registerRoutes();
    DeviceRoutes(_tbContext).registerRoutes();
    AlarmRoutes(_tbContext).registerRoutes();
    DashboardRoutes(_tbContext).registerRoutes();
    AuditLogsRoutes(_tbContext).registerRoutes();
    CustomerRoutes(_tbContext).registerRoutes();
    TenantRoutes(_tbContext).registerRoutes();
  }

  TbContext get tbContext => _tbContext;
}

abstract class TbRoutes {
  final TbContext _tbContext;

  TbRoutes(this._tbContext);

  void registerRoutes() {
    doRegisterRoutes(_tbContext.router);
  }

  void doRegisterRoutes(FluroRouter router);

  TbContext get tbContext => _tbContext;
}
