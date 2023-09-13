import '/core/context/tb_context.dart';
import '/core/entity/entities_base.dart';
import '/core/entity/entities_list.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'assets_base.dart';

class AssetsList extends BaseEntitiesWidget<AssetInfo, PageLink>
    with AssetsBase, EntitiesListStateBase {
  AssetsList(TbContext tbContext, PageKeyController<PageLink> pageKeyController,
      {searchMode = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);
}
