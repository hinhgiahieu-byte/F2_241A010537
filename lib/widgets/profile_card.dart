import 'package:flutter/material.dart';
import 'stat_box.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Thông tin sinh viên',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            const ListTile(
              leading: Icon(Icons.person),
              title: Text('Họ và tên'),
              subtitle: Text('Huỳnh Ngọc Hiếu'),
            ),

            const ListTile(
              leading: Icon(Icons.badge),
              title: Text('MSSV'),
              subtitle: Text('241A010537'),
            ),

            const ListTile(
              leading: Icon(Icons.school),
              title: Text('Lớp'),
              subtitle: Text('K26 – CNTT – LTDD'),
            ),

            const ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('Hinhgiahieu@gmail.com'),
            ),

            const SizedBox(height: 16),

            Row(
              children: const [
                Expanded(
                  child: StatBox(
                    title: 'Học kỳ',
                    value: '1',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: StatBox(
                    title: 'Điểm TB',
                    value: '8.5',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}