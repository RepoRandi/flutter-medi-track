import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_track/modules/login/pages/login.dart';
import 'package:medi_track/utils/themes/themes.dart';
import 'package:medi_track/utils/widgets/custom_primary_button.dart';
import 'package:medi_track/utils/widgets/custom_text_field.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
              onTap: () {},
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
            padding: const EdgeInsets.symmetric(horizontal: 57, vertical: 40),
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
                      'Profile Saya',
                      style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          letterSpacing: -0.03,
                          color: title),
                    ),
                  ),
                  const SizedBox(width: 21.0),
                  Text(
                    'Pengaturan',
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.03,
                        color: title),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Container(
              decoration: BoxDecoration(
                color: bebebe.withOpacity(.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: primary,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25, top: 37),
                          child: Row(
                            children: [
                              const CircleAvatar(
                                radius: 40,
                                backgroundColor: white,
                                child: CircleAvatar(
                                  radius: 37,
                                  backgroundImage: NetworkImage(
                                      "https://images.unsplash.com/photo-1600486913747-55e5470d6f40?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
                                ),
                              ),
                              const SizedBox(width: 16.0),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        'Randi ',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700,
                                            color: white),
                                      ),
                                      Text(
                                        'Maulana',
                                        style: GoogleFonts.montserrat(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400,
                                            color: white),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Membership BBLK',
                                    style: GoogleFonts.montserrat(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: white),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(height: 37.0),
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 11),
                          decoration: const BoxDecoration(
                            color: darkBlue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                          ),
                          child: Text(
                            'Lengkapi profile anda untuk memaksimalkan\npenggunaan aplikasi',
                            style: GoogleFonts.montserrat(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: white),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, bottom: 30),
                    child: Column(
                      children: [
                        Text(
                          'Pilih data yang ingin ditampilkan',
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: title),
                        ),
                        const SizedBox(height: 20.0),
                        Row(
                          children: [
                            const CircleAvatar(
                              radius: 36,
                              backgroundColor: secondary,
                              child: ImageIcon(
                                size: 40,
                                AssetImage(
                                  "assets/icons/person.png",
                                ),
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Data Diri',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color: black),
                                ),
                                Text(
                                  'Data diri anda sesuai KTP',
                                  style: GoogleFonts.montserrat(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w400,
                                      color: gray),
                                ),
                              ],
                            ),
                            const SizedBox(width: 20.0),
                            const CircleAvatar(
                              radius: 36,
                              backgroundColor: n30,
                              child: ImageIcon(
                                size: 40,
                                AssetImage(
                                  "assets/icons/map_marker.png",
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40.0),
                        const CustomTextField(
                            label: 'Nama Depan', hintText: 'Jhon'),
                        const SizedBox(height: 30.0),
                        const CustomTextField(
                            label: 'Nama Belakang', hintText: 'Doe'),
                        const SizedBox(height: 30.0),
                        const CustomTextField(
                            label: 'Email', hintText: 'Masukan email anda'),
                        const SizedBox(height: 30.0),
                        const CustomTextField(
                            label: 'No Telpon',
                            hintText: 'Masukan no telpon anda'),
                        const SizedBox(height: 30.0),
                        const CustomTextField(
                            label: 'No. KTP', hintText: 'Masukan no KTP anda'),
                        const SizedBox(height: 40.0),
                        Row(
                          children: [
                            const ImageIcon(
                              AssetImage(
                                "assets/icons/bi_info.png",
                              ),
                            ),
                            const SizedBox(width: 12.0),
                            Text(
                              'Pastikan profile anda terisi dengan benar,\ndata pribadi anda terjamin keamanannya',
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  color: sixA),
                            ),
                          ],
                        ),
                        const SizedBox(height: 34.0),
                        CustomPrimaryButton(
                            label: 'Simpan Profile',
                            icon: Icons.save_outlined,
                            onPressed: () {})
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 77.0),
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
