// ignore_for_file: depend_on_referenced_packages, unrelated_type_equality_checks

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:radio_recobro_bogota/presentation/const/color_const.dart';
import 'package:animate_do/animate_do.dart';

import '../../horarios_transmicion/controller/controller_horarios.dart';

class TopBodyHome extends StatefulWidget {
  const TopBodyHome({
    Key? key,
  }) : super(key: key);

  @override
  State<TopBodyHome> createState() => _TopBodyHomeState();
}

class _TopBodyHomeState extends State<TopBodyHome> {
  final controllerHora = Get.put(ControllerHorarios());
  final storage = GetStorage();
  String texto = '';

  @override
  void initState() {
    super.initState();
    _actualizarTexto();
    texto = storage.read('valorHoras') ?? "";
  }

  _actualizarTexto() {
    final ahora = DateTime.now();
    final horaActual =
        DateTime(0, 0, 0, ahora.hour, ahora.minute, ahora.second);
    final diaActual = ahora.weekday;

    Map mapa;
    if (diaActual >= DateTime.monday && diaActual <= DateTime.saturday) {
      mapa = controllerHora.mapaLunesSabado;
    } else {
      mapa = controllerHora.mapaDomingo;
    }

    for (var hora in mapa.keys) {
      if (horaActual == hora) {
        setState(() {
          texto = mapa[hora]!;
          storage.write('valorHoras', texto);
        });
        break;
      }
    }
    final proximaHora = mapa.keys.firstWhere(
      (hora) => hora.isAfter(horaActual),
      orElse: () => DateTime(0, 0, 0, 23, 59, 59),
    );
    final tiempoRestante = proximaHora.difference(horaActual);
    final duracionRestante = Duration(
        hours: tiempoRestante.inHours,
        minutes: tiempoRestante.inMinutes % 60,
        seconds: tiempoRestante.inSeconds % 60);

    Timer(duracionRestante, _actualizarTexto);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FadeIn(
            delay: const Duration(milliseconds: 200),
            child: SizedBox(
              width: Get.width * 0.55,
              child: const ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child:
                      Image(image: AssetImage('assets/icons/logo_mayus.jpg'))),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FadeInDown(
            from: 20,
            child: Text(
              'Cronograma: \n $texto',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: ColorsConst.principalBackground),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
