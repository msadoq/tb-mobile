import '/core/context/tb_context.dart';
import '/core/entity/entities_base.dart';
import '/core/entity/entities_grid.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'device_profiles_base.dart';

class DeviceProfilesGrid extends BaseEntitiesWidget<DeviceProfileInfo, PageLink>
    with DeviceProfilesBase, EntitiesGridStateBase {
  DeviceProfilesGrid(
      TbContext tbContext, PageKeyController<PageLink> pageKeyController)
      : super(tbContext, pageKeyController);
}
