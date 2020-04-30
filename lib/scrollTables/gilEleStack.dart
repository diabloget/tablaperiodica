import 'package:flutter/material.dart';
import 'package:tablaperiodica/generalCode/sizeconfig.dart';
import 'package:tablaperiodica/generalCode/theme.dart';
import 'package:tablaperiodica/scrollTables/rowscolumns.dart';

import 'containers.dart';

class GilEleStack{

  static Stack gilstacker(){
    return Stack(
      children: <Widget>[
        Container(
          height: SizeConfig.fixVerZoomed,
          width: SizeConfig.fixHorZoomed,
          color: Themes.themer("background"),
        ),

        Positioned(
          top: 0,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilTopper(RowsColumns.topRow()),
        ),

        Positioned(
          bottom: 0,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilBotter(RowsColumns.botRow())
        ),

        ///////////////

        Positioned(
          top: SizeConfig.fixLilVerZ * 3.2,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(1, 2)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 3.2,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(2, 2)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 9.8,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(3, 10)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 16.4,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(11, 18)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 23.0,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(19, 20)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 29.6,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(21, 36)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 36.2,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(37, 38)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 42.8,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(39, 54)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 49.4,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(55, 56)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 56.0,
          right: SizeConfig.fixLilHorZ * 48.85,
          child: GContainers.gilElementer(RowsColumns.eleRow(57, 57)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 62.6,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(58, 86)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 69.2,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(87, 88)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 75.8,
          right: SizeConfig.fixLilHorZ * 48.85,
          child: GContainers.gilElementer(RowsColumns.eleRow(89, 89)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 82.4,
          right: SizeConfig.fixLilHorZ * 1.6,
          child: GContainers.gilElementer(RowsColumns.eleRow(90, 118)),
        ),

        Positioned(
          top: SizeConfig.fixLilVerZ * 89.0,
          right: SizeConfig.fixLilHorZ * 20.5,
          child: GContainers.gilElementer(RowsColumns.eleRow(119, 120)),
        ),

        /////////////





      ],
    );
  }
}