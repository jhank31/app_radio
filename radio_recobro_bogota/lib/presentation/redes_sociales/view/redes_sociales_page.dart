import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

import '../../const/color_const.dart';

class RedesSocialesPage extends StatelessWidget {
  const RedesSocialesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsConst.beish,
        leading: IconButton(
            onPressed: () => ZoomDrawer.of(context)!.toggle(),
            icon: Icon(
              Icons.menu_open_rounded,
              color: ColorsConst.principalGreen,
              size: 40,
            )),
      ),
      body: const Center(
        child: Text('RedesSocialesPage'),
      ),
    );
  }
}
