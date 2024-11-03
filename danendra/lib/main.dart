import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profil Danendra',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Sidebar
                Expanded(
                  flex: 1,
                  child: Container(
                    color: Colors.brown[100],
                    padding: EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/Agung31.jpg'),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Danendra Suputra',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown[800],
                            ),
                          ),
                          Text(
                            'Professional Mountain Guide',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.brown[600],
                            ),
                          ),
                          SizedBox(height: 20),
                          // NIM
                          Row(
                            children: [
                              Icon(Icons.badge, color: Colors.brown[800]),
                              SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  'NIM: 42230063',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.brown[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Program Studi
                          Row(
                            children: [
                              Icon(Icons.school, color: Colors.brown[800]),
                              SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  'Prodi: Teknologi Informasi',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.brown[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30),
                          Text(
                            'Kontak',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown[800],
                            ),
                          ),
                          SizedBox(height: 10),
                          contactInfo(Icons.phone, '+62 859-3523-3403'),
                          contactInfo(Icons.email, 'danendraputra666@gmail.com'),
                          contactInfo(Icons.location_on, '06 Jl.Tenun, Banjar.Kedampal, Abiansemal Dauh Yeh Cani'),
                        ],
                      ),
                    ),
                  ),
                ),

                // Main Content (Horizontal layout)
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Profil & Skill Column
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20.0), // Tambahkan padding di sisi kanan
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Profil',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown[800],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Text(
                                        'Saya adalah seorang mahasiswa angkatan 2022 di Universitas Pendidikan Nasional, di mana saya sedang mengejar pendidikan yang berkualitas. Selain fokus pada studi, saya juga memiliki minat yang besar dalam kegiatan alam, terutama mendaki gunung. Aktivitas ini tidak hanya memberikan saya kesempatan untuk mengeksplorasi keindahan alam, tetapi juga mengajarkan saya tentang ketahanan, kerja tim, dan pentingnya menjaga lingkungan. Saya percaya bahwa pengalaman di luar ruangan memperkaya hidup dan memperluas perspektif saya sebagai individu.',
                                        style: TextStyle(fontSize: 16, color: Colors.brown[600]),
                                        textAlign: TextAlign.justify,
                                      ),
                                      SizedBox(height: 20),
                                      Text(
                                        'Skill',
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.brown[800],
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      skillItem('Desain and Photographer'),
                                      skillItem('HTML & CSS Programming'),
                                      skillItem('Wilderness First Aid'),
                                      skillItem('Navigation and Orientation'),
                                    ],
                                  ),
                                ),
                              ),
                              
                              // SizedBox untuk spasi antara kolom
                              SizedBox(width: 20), // Spasi antara kolom profil dan pendidikan
                              
                              // Education & Experience Column
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Pendidikan',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown[800],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    educationItem('2018 - 2021', 'SMK Dwijendra Denpasar', 'Jurusan Teknik Komputer dan Jaringan'),
                                    educationItem('2022 - Sekarang', 'Universitas Pendidikan Nasional', 'Jurusan Teknologi Informasi'),
                                    SizedBox(height: 20),
                                    Text(
                                      'Pengalaman Organisasi',
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.brown[800],
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    experienceItem('December 2023  - present ', 'Wakil Ketua IPD', 'Menyusun program kerja dan kegiatan internal Divisi IPD Satu Team.'),
                                    experienceItem('September 2023 - November 2023 ', 'Ketua Panitia Musang ', 'Memimpin dan mengelola 5 divisi dalam merencanakan dan melaksanakan kegiatan.'),
                                    experienceItem('January 2024 - February 2024 ', 'Koordinator Divisi PDD', 'Membantu 5 divisi dalam merencanakan dan melaksanakan kegiatan.'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget contactInfo(IconData icon, String info) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(icon, color: Colors.brown[800]),
          SizedBox(width: 10),
          Expanded(child: Text(info, style: TextStyle(color: Colors.brown[600]))),
        ],
      ),
    );
  }

  Widget educationItem(String year, String institution, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(year, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown[800])),
          Text(institution, style: TextStyle(color: Colors.brown[600], fontWeight: FontWeight.bold)),
          Text(details, style: TextStyle(color: Colors.brown[600])),
        ],
      ),
    );
  }

  Widget skillItem(String skill) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Icon(Icons.check, color: Colors.brown[800]),
          SizedBox(width: 10),
          Flexible(child: Text(skill, style: TextStyle(color: Colors.brown[600]))),
        ],
      ),
    );
  }

  Widget experienceItem(String year, String title, String details) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(year, style: TextStyle(fontWeight: FontWeight.bold, color: Colors.brown[800])),
          Text(title, style: TextStyle(color: Colors.brown[600], fontWeight: FontWeight.bold)),
          Text(details, style: TextStyle(color: Colors.brown[600])),
        ],
      ),
    );
  }
}
