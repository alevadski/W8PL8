import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'empty_list_view_model.dart';
export 'empty_list_view_model.dart';

class EmptyListViewWidget extends StatefulWidget {
  const EmptyListViewWidget({Key? key}) : super(key: key);

  @override
  _EmptyListViewWidgetState createState() => _EmptyListViewWidgetState();
}

class _EmptyListViewWidgetState extends State<EmptyListViewWidget> {
  late EmptyListViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyListViewModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: Icon(
              Icons.hourglass_empty,
              color: Color(0xFFFF9500),
              size: 50,
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
            child: Text(
              'There is nothing here yet',
              style: FlutterFlowTheme.of(context).bodyText1,
            ),
          ),
        ),
      ],
    );
  }
}
