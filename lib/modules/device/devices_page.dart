import 'package:flutter/material.dart';
import '/core/context/tb_context.dart';
import '/core/context/tb_context_widget.dart';
import '/core/entity/entities_base.dart';
import '/modules/device/device_profiles_grid.dart';
import '/widgets/tb_app_bar.dart';

class DevicesPage extends TbPageWidget {
  DevicesPage(TbContext tbContext) : super(tbContext);

  @override
  _DevicesPageState createState() => _DevicesPageState();
}

class _DevicesPageState extends TbPageState<DevicesPage> {
  final PageLinkController _pageLinkController = PageLinkController();

  @override
  Widget build(BuildContext context) {
    var deviceProfilesList = DeviceProfilesGrid(tbContext, _pageLinkController);
    return Scaffold(
        appBar: TbAppBar(tbContext, title: Text(deviceProfilesList.title)),
        body: deviceProfilesList);
  }

  @override
  void dispose() {
    _pageLinkController.dispose();
    super.dispose();
  }
}
