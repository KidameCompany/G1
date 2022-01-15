import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:g1/media/media_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayCard {
  GestureDetector create() {
    return GestureDetector(
      child: Card(
        color: const Color.fromARGB(255, 225, 119, 99),
        shape: RoundedRectangleBorder(
            side: const BorderSide(color: Color(0xFF68998c), width: 8),
            borderRadius: BorderRadius.circular(100)),
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 12.0, 50.0, 12.0),
          child: Text('Play',
              style: GoogleFonts.lobster(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 53, 21, 231),
              )),
        ),
        elevation: 50,
      ),
      onTap: () {
        // add vibration when tapping this card.
        HapticFeedback.heavyImpact();
        MediaManager().playClickSound(2);
        print('Play Tapped!');
      },
    );
  }
}
