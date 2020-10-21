import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  Map<String, String> names = {
    '01': 'Virus',
    '02': 'Car Free Day',
    '03': 'Isolasi',
    '04': 'Dokter',
    '05': 'Jumlah Korban',
    '06': 'Pemakaman',
    '07': 'Olahraga',
    '08': 'Wajib Masker',
    '09': 'Rapid Test',
    '10': 'Wisma Atlet'
  };
  Map<String, String> desc = {
    '01':
        '''  Ini adalah gambaran bentuk dari corona virus.''',
    '02': ''' Car Free Day di Jakarta ditutup sementara akibat adanya covid 19.''',
    '03':
        ''' Jika seseorang telah terpapar corona virus maka diharuskan untuk isolasi mandiri selama 14 hari.''',
    '04': ''' Ini adalah jumlah korban covid di Indonesia.   ''',
    '05':
        ''' Pemakaman korban covid 19 harus sesuai protokol covid 19. ''',
    '06': ''' Kita disarankan untuk berolahraga untuk mengurangi resiko terpapar covid 19.  ''',
    '07': ''' Masyarakat diwajibkan untuk memakai masker jika ada kegiatan di luar ruangan dan ditempat ramai. ''',
    '08': ''' Pasien covid 19 yang sedang dirawat di Rumah Sakit. ''',
    '09':
        '''  Jika ingin mengetahui apakah kita terpapar covid 19 atau tidak, kita harus melakukan rapid test atau swab test''',
    '10': ''' Wisma Atlet dijadikan penampungan korban covid 19 dikarenakan rumah sakit di Jakarta tidak dapat menampung korban covid'''
  };

  final String value;
  // konstruktor
  ContentPage({Key key, @required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              'images/${this.value}.jpg',
              fit: BoxFit.fill,
            ),
            Container(
              height: 15.0,
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 15.0,
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(names[this.value],
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold)),
                      Text(
                        'Jakarta, DKI Jakarta',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 10.0,
                        ),
                      ),
                    ]),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                desc[this.value],
                style: TextStyle(
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,
                softWrap: true,
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
