class ControllerHorarios {
  final Map<DateTime, String> mapaLunesSabado = {
    DateTime(0, 0, 0, 6, 0, 0): 'Introducción  PSAM',
    DateTime(0, 0, 0, 7, 15, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 7, 30, 0): 'Estudio Vida',
    DateTime(0, 0, 0, 8, 0, 0): 'Lectura PSAM',
    DateTime(0, 0, 0, 8, 10, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 8, 30, 0): 'Estudio Vida',
    DateTime(0, 0, 0, 9, 0, 0): 'Mensajes creyentes nuevos',
    DateTime(0, 0, 0, 9, 30, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 10, 0, 0): 'Estudio Vida',
    DateTime(0, 0, 0, 10, 30, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 11, 0, 0): 'Mensaje Buen Depósito',
    DateTime(0, 0, 0, 12, 0, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 12, 30, 0): 'Lectura Biblia',
    DateTime(0, 0, 0, 13, 0, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 13, 30, 0): 'Estudio Vida',
    DateTime(0, 0, 0, 14, 0, 0): 'Niños',
    DateTime(0, 0, 0, 15, 0, 0): 'Jóvenes',
    DateTime(0, 0, 0, 16, 30, 0): 'Estudio Vida',
    DateTime(0, 0, 0, 17, 0, 0): 'Himnos y cánticos',
  };
  final Map<DateTime, String> mapaDomingo = {
    DateTime(0, 0, 0, 6, 0, 0): 'Introducción  PSAM',
    DateTime(0, 0, 0, 7, 15, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 7, 30, 0): 'No hay programación',
    DateTime(0, 0, 0, 8, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 8, 10, 0): 'No hay programación',
    DateTime(0, 0, 0, 8, 30, 0): 'No hay programación',
    DateTime(0, 0, 0, 9, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 9, 30, 0): 'No hay programación',
    DateTime(0, 0, 0, 10, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 10, 30, 0): 'No hay programación',
    DateTime(0, 0, 0, 11, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 12, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 12, 30, 0): 'Niños',
    DateTime(0, 0, 0, 13, 0, 0): 'No hay programación',
    DateTime(0, 0, 0, 13, 30, 0): 'No hay programación',
    DateTime(0, 0, 0, 14, 0, 0): 'Jóvenes',
    DateTime(0, 0, 0, 15, 0, 0): 'No hay programacion',
    DateTime(0, 0, 0, 16, 30, 0): 'Himnos y cánticos',
    DateTime(0, 0, 0, 17, 0, 0): 'No hay programación',
  };

  final List<String> listHours = [
    '6:00 - 7:15',
    '7:15 - 7:30',
    '7:30 - 8:00',
    '8:00 - 8:10',
    '8:10 - 8:30',
    '8:30 - 9:00',
    '9:00 - 9:30',
    '9:30 - 10:00',
    '10:00 - 10:30',
    '10:30 - 11:00',
    '11:00 - 12:00',
    '12:00 - 12:30',
    '12:30 - 1:00',
    '1:00 - 1:30',
    '1:30 - 2:00',
    '2:00 - 3:00',
    '3:00 - 4:30',
    '4:30 - 5:00',
    '5:00 - 5:00',
  ];

  final List<String> listScheduleMondayToSaturday = [
    'Introducción PSAM',
    'Himnos y cánticos',
    'Estudio Vida',
    'Lectura PSAM',
    'Himnos y cánticos',
    'Estudio Vida',
    'Mensajes creyentes nuevos',
    'Himnos y cánticos',
    'Estudio Vida',
    'Himnos y cánticos',
    'Mensaje Buen Depósito',
    'Himnos y cánticos',
    'Lectura Biblia',
    'Himnos y cánticos',
    'Estudio Vida',
    'Niños',
    'Jóvenes',
    'Estudio Vida',
    'Himnos y cánticos',
  ];

  final List<String> listShceduleSunday = [
    'Introducción PSAM',
    'Himnos y cánticos',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    'Niños',
    '',
    '',
    'Jóvenes',
    '',
    'Himnos y cánticos',
    '',
  ];
}