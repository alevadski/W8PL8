import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../program_preset/program_preset_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'program_presets_model.dart';
export 'program_presets_model.dart';

class ProgramPresetsWidget extends StatefulWidget {
  const ProgramPresetsWidget({Key? key}) : super(key: key);

  @override
  _ProgramPresetsWidgetState createState() => _ProgramPresetsWidgetState();
}

class _ProgramPresetsWidgetState extends State<ProgramPresetsWidget> {
  late ProgramPresetsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProgramPresetsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'ProgramPresets'});
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<PresetProgramsRecord>>(
      stream: queryPresetProgramsRecord(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).primaryColor,
              ),
            ),
          );
        }
        List<PresetProgramsRecord> programPresetsPresetProgramsRecordList =
            snapshot.data!;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          appBar: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () async {
                logFirebaseEvent('PROGRAM_PRESETS_arrow_back_ICN_ON_TAP');
                logFirebaseEvent('IconButton_navigate_back');
                Navigator.pop(context);
              },
            ),
            title: Text(
              'Programs For You',
              style: FlutterFlowTheme.of(context).title2.override(
                    fontFamily: 'Poppins',
                    color: Colors.white,
                    fontSize: 22,
                  ),
            ),
            actions: [],
            centerTitle: false,
            elevation: 2,
          ),
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    StreamBuilder<List<PresetProgramsRecord>>(
                      stream: queryPresetProgramsRecord(),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50,
                              height: 50,
                              child: CircularProgressIndicator(
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<PresetProgramsRecord>
                            listViewPresetProgramsRecordList = snapshot.data!;
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: listViewPresetProgramsRecordList.length,
                          itemBuilder: (context, listViewIndex) {
                            final listViewPresetProgramsRecord =
                                listViewPresetProgramsRecordList[listViewIndex];
                            return InkWell(
                              onTap: () async {
                                logFirebaseEvent(
                                    'PROGRAM_PRESETS_Container_f0lgjane_ON_TA');
                                logFirebaseEvent('Container_navigate_to');
                                await Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ProgramPresetWidget(
                                      programPresetRef:
                                          listViewPresetProgramsRecord
                                              .reference,
                                    ),
                                  ),
                                );
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Text(
                                  listViewPresetProgramsRecord.name!,
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
