import '/backend/backend.dart';
import '/components/widgets/card_with_user_photo_description/card_with_user_photo_description_widget.dart';
import '/components/widgets/empty_list/empty_list_widget.dart';
import '/components/widgets/subtitle_header/subtitle_header_widget.dart';
import '/components/widgets/title_header_component/title_header_component_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'admin_feedback_model.dart';
export 'admin_feedback_model.dart';

class AdminFeedbackWidget extends StatefulWidget {
  const AdminFeedbackWidget({super.key});

  @override
  State<AdminFeedbackWidget> createState() => _AdminFeedbackWidgetState();
}

class _AdminFeedbackWidgetState extends State<AdminFeedbackWidget> {
  late AdminFeedbackModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminFeedbackModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'admin_feedback'});
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                wrapWithModel(
                  model: _model.titleHeaderComponentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: TitleHeaderComponentWidget(
                    titleText: 'Received Feedbacks',
                  ),
                ),
                wrapWithModel(
                  model: _model.subtitleHeaderModel,
                  updateCallback: () => safeSetState(() {}),
                  child: SubtitleHeaderWidget(
                    mainTitle: 'Feedback',
                    subText: 'View feedbacks received from users.',
                  ),
                ),
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: PagedListView<DocumentSnapshot<Object?>?,
                            FeedbackRecord>(
                          pagingController: _model.setListViewController(
                            FeedbackRecord.collection
                                .orderBy('submitted_on', descending: true),
                          ),
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          reverse: false,
                          scrollDirection: Axis.vertical,
                          builderDelegate:
                              PagedChildBuilderDelegate<FeedbackRecord>(
                            // Customize what your widget looks like when it's loading the first page.
                            firstPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitChasingDots(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            ),
                            // Customize what your widget looks like when it's loading another page.
                            newPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitChasingDots(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 50.0,
                                ),
                              ),
                            ),
                            noItemsFoundIndicatorBuilder: (_) =>
                                EmptyListWidget(
                              emptyWhat: 'feedbacks',
                            ),
                            itemBuilder: (context, _, listViewIndex) {
                              final listViewFeedbackRecord = _model
                                  .listViewPagingController!
                                  .itemList![listViewIndex];
                              return FutureBuilder<UsersRecord>(
                                future: UsersRecord.getDocumentOnce(
                                    listViewFeedbackRecord.submittedBy!),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 50.0,
                                        height: 50.0,
                                        child: SpinKitChasingDots(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 50.0,
                                        ),
                                      ),
                                    );
                                  }

                                  final cardWithUserPhotoDescriptionUsersRecord =
                                      snapshot.data!;

                                  return InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'ADMIN_FEEDBACK_Container_tl631ai1_ON_TAP');
                                      logFirebaseEvent(
                                          'cardWithUserPhotoDescription_navigate_to');

                                      context.pushNamed(
                                        'admin_feedback_view',
                                        queryParameters: {
                                          'user': serializeParam(
                                            cardWithUserPhotoDescriptionUsersRecord
                                                .displayName,
                                            ParamType.String,
                                          ),
                                          'photo': serializeParam(
                                            cardWithUserPhotoDescriptionUsersRecord
                                                .photoUrl,
                                            ParamType.String,
                                          ),
                                          'feedbackRef': serializeParam(
                                            listViewFeedbackRecord.reference,
                                            ParamType.DocumentReference,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: wrapWithModel(
                                      model: _model
                                          .cardWithUserPhotoDescriptionModels
                                          .getModel(
                                        random_data
                                            .randomInteger(0, 10)
                                            .toString(),
                                        listViewIndex,
                                      ),
                                      updateCallback: () => safeSetState(() {}),
                                      child: CardWithUserPhotoDescriptionWidget(
                                        key: Key(
                                          'Keytl6_${random_data.randomInteger(0, 10).toString()}',
                                        ),
                                        userName:
                                            cardWithUserPhotoDescriptionUsersRecord
                                                .displayName,
                                        datetime:
                                            listViewFeedbackRecord.submittedOn!,
                                        img:
                                            cardWithUserPhotoDescriptionUsersRecord
                                                .photoUrl,
                                        type: listViewFeedbackRecord.type,
                                        status: listViewFeedbackRecord.status,
                                      ),
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
