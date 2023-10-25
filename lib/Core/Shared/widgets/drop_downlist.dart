import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DropDownList extends StatefulWidget {
  const DropDownList({
    super.key,
  });

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String dropdownvalue = 'Season 1';

  var items = [
    'Season 1',
    'Season 2',
    'Season 3',
    'Season 4',
    'Season 5',
  ];
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        dropdownColor: const Color(0xFF252836),
        iconEnabledColor: ConstColors.whiteColor,
        hint: Padding(
          padding: const EdgeInsets.only(right: 4),
          child: Text(
            dropdownvalue,
            style: GoogleFonts.montserrat(
              textStyle: const TextStyle(
                  color: ConstColors.whiteColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
        icon: const Icon(Icons.keyboard_arrow_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Container(
              color: const Color(0xFF252836),
              child: Center(
                child: Text(
                  items,
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: ConstColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
          });
        });
  }
}
