import 'package:flutter/material.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:radio_recobro_bogota/presentation/export_pages/pages.dart';
import 'package:radio_recobro_bogota/presentation/redes_sociales/view/redes_sociales_page.dart';

class MenuPageDrawer extends StatelessWidget {
  MenuPageDrawer({super.key, required this.onPageChanged});

  // ignore: prefer_typing_uninitialized_variables
  final Function(Widget) onPageChanged;

  final List<ListItems> listDrawer = [
    ListItems(
        const Icon(Icons.home_rounded), const Text('Radio'), const HomePage()),
    ListItems(const Icon(Icons.calendar_month_rounded), const Text('Horarios'),
        const HorariosPage()),
    ListItems(const Icon(Icons.newspaper_outlined),
        const Text('Redes Sociales'), const RedesSocialesPage()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsConst.secondaryGren,
      body: Theme(
          data: ThemeData.dark(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: listDrawer
                .map((e) => ListTile(
                      title: e.title,
                      leading: e.icon,
                      onTap: () => onPageChanged(e.page),
                    ))
                .toList(),
          )),
    );
  }
}

class ListItems {
  final Icon icon;
  final Text title;
  final Widget page;

  ListItems(this.icon, this.title, this.page);
}
