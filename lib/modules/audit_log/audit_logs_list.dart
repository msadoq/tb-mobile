import '/core/context/tb_context.dart';
import '/core/entity/entities_base.dart';
import '/core/entity/entities_list.dart';
import '/modules/audit_log/audit_logs_base.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class AuditLogsList extends BaseEntitiesWidget<AuditLog, TimePageLink>
    with AuditLogsBase, EntitiesListStateBase {
  AuditLogsList(
      TbContext tbContext, PageKeyController<TimePageLink> pageKeyController,
      {searchMode = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);
}
