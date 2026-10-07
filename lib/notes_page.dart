import 'package:flutter/material.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    const olive = Color(0xFF687044);
    const darkOlive = Color(0xFF4F5A35);
    const orange = Color(0xFFD96545);
    const cream = Color(0xFFFAF7ED);
    const lightOrange = Color(0xFFFCE7D6);

    return Scaffold(
      backgroundColor: cream,
      appBar: AppBar(
        title: const Text(
          'Catatan Pribadi',
        ),
        backgroundColor: olive,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const TextField(
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: darkOlive,
              ),
              decoration: InputDecoration(
                hintText: 'Judul Catatan',
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
                border: InputBorder.none,
              ),
            ),

            Container(
              height: 2,
              width: double.infinity,
              color: lightOrange,
            ),

            const SizedBox(height: 15),

            const Expanded(
              child: TextField(
                maxLines: null,
                expands: true,
                textAlignVertical:
                    TextAlignVertical.top,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black87,
                ),
                decoration: InputDecoration(
                  hintText:
                      'Mulai mengetik catatan bimbinganmu di sini',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),

            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 45,
                height: 45,
                decoration: const BoxDecoration(
                  color: orange,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.check_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}