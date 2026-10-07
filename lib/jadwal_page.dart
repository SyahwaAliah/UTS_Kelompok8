import 'package:flutter/material.dart';

import 'jadwal_theme.dart';
import 'booking_jadwal_page.dart';

class JadwalPage extends StatefulWidget {
  const JadwalPage({super.key});

  @override
  State<JadwalPage> createState() => _JadwalPageState();
}

class _JadwalPageState extends State<JadwalPage> {
  int selectedDay = 0;
  int selectedFilter = 0;

  Widget dayButton({
    required String day,
    required String date,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 62,
        height: 72,
        decoration: BoxDecoration(
          color: selected
              ? JadwalColors.olive
              : Colors.white,
          borderRadius: BorderRadius.circular(18),
          boxShadow: [
            if (!selected)
              BoxShadow(
                color: Colors.black.withOpacity(0.03),
                blurRadius: 6,
                offset: const Offset(0, 2),
              ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              day,
              style: TextStyle(
                color: selected
                    ? Colors.white
                    : JadwalColors.textGrey,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            Text(
              date,
              style: TextStyle(
                color: selected
                    ? Colors.white
                    : JadwalColors.darkOlive,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget filterButton({
    required String text,
    required bool selected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 17,
          vertical: 11,
        ),
        decoration: BoxDecoration(
          color: selected
              ? JadwalColors.olive
              : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: selected
                ? Colors.white
                : JadwalColors.darkOlive,
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  void bukaBooking() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BookingJadwalPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: JadwalBackground(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(
            20,
            20,
            20,
            30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const JadwalHeader(
                title: 'Jadwal Bimbingan',
                subtitle:
                    'Lihat jadwal konsultasi skripsimu.',
              ),

              const SizedBox(height: 25),

              // ==============================
              // TANGGAL
              // ==============================

              Center(
                child: Wrap(
                  spacing: 9,
                  children: [
                    dayButton(
                      day: 'SEN',
                      date: '05',
                      selected: selectedDay == 0,
                      onTap: () {
                        setState(() {
                          selectedDay = 0;
                        });
                      },
                    ),
                    dayButton(
                      day: 'SEL',
                      date: '06',
                      selected: selectedDay == 1,
                      onTap: () {
                        setState(() {
                          selectedDay = 1;
                        });
                      },
                    ),
                    dayButton(
                      day: 'RAB',
                      date: '07',
                      selected: selectedDay == 2,
                      onTap: () {
                        setState(() {
                          selectedDay = 2;
                        });
                      },
                    ),
                    dayButton(
                      day: 'KAM',
                      date: '08',
                      selected: selectedDay == 3,
                      onTap: () {
                        setState(() {
                          selectedDay = 3;
                        });
                      },
                    ),
                    dayButton(
                      day: 'JUM',
                      date: '09',
                      selected: selectedDay == 4,
                      onTap: () {
                        setState(() {
                          selectedDay = 4;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // ==============================
              // FILTER
              // ==============================

              Center(
                child: Wrap(
                  spacing: 8,
                  children: [
                    filterButton(
                      text: 'Semua',
                      selected: selectedFilter == 0,
                      onTap: () {
                        setState(() {
                          selectedFilter = 0;
                        });
                      },
                    ),
                    filterButton(
                      text: 'Terjadwal',
                      selected: selectedFilter == 1,
                      onTap: () {
                        setState(() {
                          selectedFilter = 1;
                        });
                      },
                    ),
                    filterButton(
                      text: 'Menunggu',
                      selected: selectedFilter == 2,
                      onTap: () {
                        setState(() {
                          selectedFilter = 2;
                        });
                      },
                    ),
                    filterButton(
                      text: 'Selesai',
                      selected: selectedFilter == 3,
                      onTap: () {
                        setState(() {
                          selectedFilter = 3;
                        });
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // ==============================
              // BIMBINGAN
              // ==============================

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: JadwalColors.lightPeach,
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                          child: const Text(
                            'Terjadwal',
                            style: TextStyle(
                              color: JadwalColors.orange,
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                        const Spacer(),

                        const Text(
                          '10.00 - 11.00 WIB',
                          style: TextStyle(
                            color: JadwalColors.textGrey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'Bimbingan Skripsi',
                      style: TextStyle(
                        color: JadwalColors.darkOlive,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 6),

                    const Text(
                      'Dr. Budi Santoso',
                      style: TextStyle(
                        color: JadwalColors.textGrey,
                        fontSize: 14,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          size: 17,
                          color: JadwalColors.orange,
                        ),

                        const SizedBox(width: 5),

                        const Text(
                          'Ruang Dosen Lt. 3',
                          style: TextStyle(
                            color: JadwalColors.textGrey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

              // ==============================
              // BOOKING
              // ==============================

              GestureDetector(
                onTap: bukaBooking,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(
                    vertical: 15,
                  ),
                  decoration: BoxDecoration(
                    color: JadwalColors.olive,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Center(
                    child: Text(
                      'Booking Jadwal Bimbingan',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}