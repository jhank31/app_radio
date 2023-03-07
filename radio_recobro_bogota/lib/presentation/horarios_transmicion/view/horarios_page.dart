// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_recobro_bogota/presentation/horarios_transmicion/controller/controller_horarios.dart';
import 'package:animate_do/animate_do.dart';

import '../../const/color_const.dart';

class HorariosPage extends StatelessWidget {
  const HorariosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = ControllerHorarios();
    return Scaffold(
      backgroundColor: ColorsConst.principalBackground,
      appBar: AppBar(
        elevation: 0,
        actions: [
          IconButton(
              iconSize: 35,
              color: ColorsConst.principalGreen,
              onPressed: () => exit(0),
              icon: const Icon(Icons.exit_to_app_rounded))
        ],
        backgroundColor: ColorsConst.beish,
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Container(
              padding: const EdgeInsets.all(20),
              child: FadeInDown(
                from: 20,
                delay: const Duration(milliseconds: 200),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'PROGRAMACIÓN RADIO RECOBRO BOGOTÁ 24 HORAS - 2023',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorsConst.principalGreen,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: Get.width * 0.25,
                          child: const Text(
                            'Horario',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 230,
                          child: const Text(
                            'Lunes a Sábado',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 180,
                          child: const Text(
                            'Domingo',
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            for (String hour in controller.listHours)
                              Container(
                                height: 35,
                                width: Get.width * 0.25,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Text(hour),
                              )
                          ],
                        ),
                        Column(
                          children: [
                            for (String schedule
                                in controller.listScheduleMondayToSaturday)
                              Container(
                                height: 35,
                                width: 230,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Text(schedule),
                              )
                          ],
                        ),
                        Column(
                          children: [
                            for (String schedule
                                in controller.listShceduleSunday)
                              Container(
                                height: 35,
                                width: 180,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Text(schedule),
                              )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
