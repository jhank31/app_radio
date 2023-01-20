import 'package:app_radio/presentation/const/color_const.dart';
import 'package:flutter/material.dart';

class TopBodyHome extends StatelessWidget {
  const TopBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Radio Recobro Bogotá',
            style: TextStyle(
                color: ColorsConst.principalBackground,
                fontSize: 25,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.visible,
          ),
          const SizedBox(
            height: 50,
          ),
          const SizedBox(
            width: 250,
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                child: Image(image: AssetImage('assets/icons/logo_name.png'))),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
