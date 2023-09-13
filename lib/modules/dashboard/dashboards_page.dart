import 'package:flutter/material.dart';
import '/core/context/tb_context.dart';
import '/core/context/tb_context_widget.dart';
import '/widgets/tb_app_bar.dart';

import 'dashboards_grid.dart';

class DashboardsPage extends TbPageWidget {
  DashboardsPage(TbContext tbContext) : super(tbContext);

  @override
  _DashboardsPageState createState() => _DashboardsPageState();
}

class _DashboardsPageState extends TbPageState<DashboardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TbAppBar(tbContext, title: Text('Dashboards')),
        body: DashboardsGridWidget(tbContext));
  }

  @override
  void dispose() {
    super.dispose();
  }
}
