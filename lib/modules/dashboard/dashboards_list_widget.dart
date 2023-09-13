import '/core/context/tb_context.dart';
import '/core/entity/entities_list_widget.dart';
import '/modules/dashboard/dashboards_base.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class DashboardsListWidget extends EntitiesListPageLinkWidget<DashboardInfo>
    with DashboardsBase {
  DashboardsListWidget(TbContext tbContext,
      {EntitiesListWidgetController? controller})
      : super(tbContext, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/dashboards');
  }
}
