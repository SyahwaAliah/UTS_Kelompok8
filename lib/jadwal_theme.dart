import 'package:flutter/material.dart';

class JadwalColors {

  static const Color olive = Color(0xFF697447);
  static const Color darkOlive = Color(0xFF566038);

  static const Color orange = Color(0xFFE77845);
  static const Color darkOrange = Color(0xFFD9643D);

  static const Color cream = Color(0xFFFFF9F0);
  static const Color peach = Color(0xFFFBE4D1);
  static const Color lightPeach = Color(0xFFFFEBDD);

  static const Color softGreen = Color(0xFFF2F3E7);
  static const Color lightGreen = Color(0xFFE9EDDE);

  static const Color softYellow = Color(0xFFFFF3D8);

  static const Color white = Colors.white;

  static const Color textDark = Color(0xFF303521);
  static const Color textGrey = Color(0xFF9A9A94);
}

class JadwalBackground extends StatelessWidget {
  final Widget child;

  const JadwalBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            JadwalColors.cream,
            JadwalColors.softGreen,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: SafeArea(
        child: child,
      ),
    );
  }
}

class JadwalHeader extends StatelessWidget {
  final String title;
  final String subtitle;

  const JadwalHeader({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.06),
                blurRadius: 10,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
              color: JadwalColors.orange,
            ),
          ),
        ),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: JadwalColors.darkOlive,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 5),

              Text(
                subtitle,
                style: const TextStyle(
                  color: JadwalColors.textGrey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}