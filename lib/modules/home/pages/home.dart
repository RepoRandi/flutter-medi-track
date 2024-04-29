import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/login/pages/login.dart';
import 'package:medi_track/modules/profile/pages/profile.dart';
import 'package:medi_track/utils/themes/themes.dart';
import 'package:medi_track/utils/widgets/custom_text_field.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(
            Icons.shopping_cart,
            color: title,
          ),
          SizedBox(width: 32.0),
          Badge(
            label: Text(
              '4',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: Icon(
              Icons.notifications,
              color: title,
            ),
          ),
          SizedBox(width: 25.0),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: const Text('Randi Maulana A'),
              accountEmail: const Text('devs.randi@gmail.com'),
              currentAccountPicture: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
              ),
              decoration: BoxDecoration(
                color: primary.withOpacity(.8),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text('Profile Saya',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: lowGrey)),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Profile()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.online_prediction),
              title: Text('Pengaturan',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: lowGrey)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.logout,
              ),
              title: Text('Logout',
                  style: GoogleFonts.montserrat(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: lowGrey)),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              ),
            ),
            const SizedBox(height: 70.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Ikuti kami di',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: title)),
                const SizedBox(width: 12.0),
                const ImageIcon(
                  AssetImage(
                    "assets/icons/fb.png",
                  ),
                ),
                const SizedBox(width: 12.0),
                const ImageIcon(
                  AssetImage(
                    "assets/icons/ig.png",
                  ),
                ),
                const SizedBox(width: 12.0),
                const ImageIcon(
                  AssetImage(
                    "assets/icons/twt.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 292.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('FAQ',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: bebebe)),
                const SizedBox(width: 48.0),
                Text('Terms and Conditions',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: bebebe)),
              ],
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 54, left: 20, right: 20),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Solusi, ',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.03,
                                        color: title),
                                  ),
                                  Text(
                                    'Kesehatan Anda',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: -0.03,
                                        color: title),
                                  ),
                                ],
                              ),
                              Text(
                                'Update informasi seputar kesehatan\nsemua bisa disini !',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: subTitle),
                              ),
                              const SizedBox(height: 12.0),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 32,
                                    width: 110,
                                    padding: const EdgeInsets.all(8),
                                    decoration: BoxDecoration(
                                        color: primary,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Text(
                                      'Selengkapnya',
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: white),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 19.0),
                          Expanded(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/date.png',
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 33,
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(20)),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                    const SizedBox(width: 10.0),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          color: white,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 46.0),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Layanan Kusus',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.03,
                                    color: title),
                              ),
                              Text(
                                'Tes Covid 19, Cegah Corona\nSedini Mungkin',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: subTitle),
                              ),
                              const SizedBox(height: 12.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Daftar Tes',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: title),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Icon(
                                    Icons.arrow_right_alt,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(width: 19.0),
                          Expanded(
                            child: Image.asset(
                              'assets/images/covid.png',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 53.0),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Image.asset(
                              'assets/images/track.png',
                            ),
                          ),
                          const SizedBox(width: 24.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Track Pemeriksaan',
                                style: GoogleFonts.montserrat(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: -0.03,
                                    color: title),
                              ),
                              Text(
                                'Kamu dapat mengecek progress\npemeriksaanmu disini',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: subTitle),
                              ),
                              const SizedBox(height: 12.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Track',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: title),
                                  ),
                                  const SizedBox(width: 8.0),
                                  const Icon(
                                    Icons.arrow_right_alt,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                const Row(
                  children: [
                    CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.white,
                      child: ImageIcon(
                        AssetImage(
                          'assets/icons/filter.png',
                        ),
                        size: 30.0,
                      ),
                    ),
                    SizedBox(width: 30.0),
                    Expanded(
                      child: CustomTextField(
                        borderRadius: 30,
                        hintText: 'Search',
                        suffixIcon: Icon(
                          Icons.search,
                          color: title,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Builder(
              builder: (context) {
                List horizontalMenuList = [
                  {
                    "label": "All Product",
                    "onTap": () {},
                  },
                  {
                    "label": "Layanan Kesehatan",
                    "onTap": () {},
                  },
                  {
                    "label": "Alat Kesehatan",
                    "onTap": () {},
                  },
                ];

                return SizedBox(
                  height: 40.0,
                  width: 100.0,
                  child: ListView.builder(
                    itemCount: horizontalMenuList.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      var item = horizontalMenuList[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            animationDuration:
                                const Duration(milliseconds: 1000),
                            backgroundColor: index == 0 ? title : white,
                            splashFactory: InkSplash.splashFactory,
                          ),
                          onPressed: () {},
                          child: Text(
                            item["label"],
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: index == 0 ? white : title,
                                fontSize: 12.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 26.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 22),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '5',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: bebebe),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/teleskop.png",
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              'Suntik Steril',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: title),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                Text(
                                  'Rp. 10.000',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: orange),
                                ),
                                const SizedBox(width: 13.0),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: lightGreen,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    'Ready Stok',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: green),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(
                        left: 10, top: 10, right: 10, bottom: 22),
                    decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              Text(
                                '5',
                                style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: bebebe),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Image.asset(
                              "assets/images/teleskop.png",
                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.fill,
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              'Suntik Steril',
                              style: GoogleFonts.montserrat(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: title),
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              children: [
                                Text(
                                  'Rp. 10.000',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: orange),
                                ),
                                const SizedBox(width: 13.0),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: lightGreen,
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Text(
                                    'Ready Stok',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                        color: green),
                                  ),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              'Pilih Tipe Layanan Kesehatan Anda',
              style: GoogleFonts.montserrat(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: -0.03,
                  color: title),
            ),
          ),
          const SizedBox(height: 22.0),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 127),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                        color: secondary,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      'Satuan',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.03,
                          color: title),
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  Text(
                    'Paket Pemeriksaan',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.03,
                        color: title),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 21, top: 10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PCR Swab Test (Drive Thru)\nHasil 1 Hari Kerja',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: title),
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            'Rp. 1.400.000',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: orange),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/hospital.png",
                                ),
                              ),
                              const SizedBox(width: 7.0),
                              Text(
                                'Lenmarc Surabaya',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: sixA),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/location.png",
                                ),
                              ),
                              const SizedBox(width: 7.0),
                              Text(
                                'Dukuh Pakis, Surabaya',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: bebebe),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      "assets/images/rs1.png",
                      width: 110.0,
                      height: 170.0,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: white, borderRadius: BorderRadius.circular(16)),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 21, top: 10, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PCR Swab Test (Drive Thru)\nHasil 1 Hari Kerja',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: title),
                          ),
                          const SizedBox(height: 12.0),
                          Text(
                            'Rp. 1.400.000',
                            style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: orange),
                          ),
                          const SizedBox(height: 20.0),
                          Row(
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/hospital.png",
                                ),
                              ),
                              const SizedBox(width: 7.0),
                              Text(
                                'Lenmarc Surabaya',
                                style: GoogleFonts.montserrat(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: sixA),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Row(
                            children: [
                              const ImageIcon(
                                AssetImage(
                                  "assets/icons/location.png",
                                ),
                              ),
                              const SizedBox(width: 7.0),
                              Text(
                                'Dukuh Pakis, Surabaya',
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: bebebe),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image.asset(
                      "assets/images/rs2.png",
                      width: 110.0,
                      height: 170.0,
                      fit: BoxFit.fill,
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ImageIcon(
                AssetImage(
                  "assets/icons/refresh.png",
                ),
              ),
              const SizedBox(width: 12.0),
              Text(
                'Tampilkan Lebih Banyak',
                style: GoogleFonts.montserrat(
                    fontSize: 14, fontWeight: FontWeight.w600, color: bebebe),
              ),
            ],
          ),
          const SizedBox(height: 40.0),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 33),
            decoration: const BoxDecoration(color: title),
            child: Row(
              children: [
                Text(
                  'Ingin mendapat update\ndari kami ?',
                  style: GoogleFonts.montserrat(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: whiteGrey),
                ),
                const SizedBox(width: 40.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Dapatkan\nnotifikasi',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: whiteGrey),
                    ),
                    const SizedBox(width: 8.0),
                    const Icon(
                      Icons.arrow_right_alt,
                      color: white,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
