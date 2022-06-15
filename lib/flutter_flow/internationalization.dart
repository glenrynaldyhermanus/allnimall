import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations);

  static List<String> languages() => ['id', 'en'];

  String get languageCode => locale.languageCode;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.languageCode] ?? '';

  String getVariableText({
    String idText = '',
    String enText = '',
  }) =>
      [idText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.languageCode);

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Home
  {
    '22804qio': {
      'id': 'Happening!',
      'en': 'Happy!',
    },
    'o5wzc19j': {
      'id': 'View All',
      'en': 'View All',
    },
    'ikgrhhp8': {
      'id': 'My Pets',
      'en': 'My Pets',
    },
    'sebz3x3k': {
      'id': 'View All',
      'en': 'View All',
    },
    'piy5rbss': {
      'id': 'Articles',
      'en': 'Articles',
    },
    'vh0nicy1': {
      'id': 'Your Schedule',
      'en': 'Your Schedule',
    },
    '5jo8brkj': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Splash
  {
    'lehdh367': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // ProfileAndPets
  {
    '7t3p9dos': {
      'id': 'Profile n Pets',
      'en': 'Profile n Pets',
    },
    'cpx4ysk5': {
      'id': 'Profile',
      'en': 'Profile',
    },
    'vzpjg5cv': {
      'id': 'My Pets',
      'en': 'My Pets',
    },
    'wgmtuxlu': {
      'id': 'View All',
      'en': 'View All',
    },
    '77k71d5a': {
      'id': 'Your Schedule',
      'en': 'Your Schedule',
    },
    'uz8c1khb': {
      'id': 'You need to sign in',
      'en': 'You need to sign in',
    },
    'kx7pd5ep': {
      'id': 'It just takes a minute to sign in',
      'en': 'It just takes a minute to sign in',
    },
    'orpaiw96': {
      'id': 'Sign In',
      'en': 'Sign In',
    },
    'qyju3drw': {
      'id': 'Profile n Pets',
      'en': 'Profile n Pets',
    },
  },
  // MarketPlace
  {
    '4vlofnhq': {
      'id': 'Marketplace',
      'en': 'Marketplace',
    },
    'rc07r47s': {
      'id': 'Coming Soon',
      'en': 'Coming Soon',
    },
    'tu0ilbnp': {
      'id': 'Hang on! We\'re on our way...',
      'en': 'Hang on! We&#39;re on our way...',
    },
    'eke3hfl1': {
      'id': 'Marketplace',
      'en': 'Marketplace',
    },
  },
  // NewPet
  {
    'mm9uekye': {
      'id': 'New Pet',
      'en': 'New Pet',
    },
    '6vtnugjr': {
      'id': 'Add picture',
      'en': 'Add picture',
    },
    'at7qwq1y': {
      'id': 'Pet\'s name',
      'en': 'Pet&#39;s name',
    },
    'le6mxyts': {
      'id': 'Pet\'s sex',
      'en': 'Pet&#39;s sex',
    },
    'xsh13u0v': {
      'id': 'Female',
      'en': 'female',
    },
    'utja1830': {
      'id': 'Male',
      'en': 'Male',
    },
    'u05pce9y': {
      'id': 'Pet\'s weight',
      'en': 'Pet&#39;s weight',
    },
    'vg7uw56u': {
      'id': 'gr',
      'en': 'gr',
    },
    'u2ttvwsp': {
      'id': 'kg',
      'en': 'kg',
    },
    'ln51zcqn': {
      'id': 'Pet\'s breed',
      'en': 'Pet&#39;s breed',
    },
    '1a4qr3dh': {
      'id': 'Conditions',
      'en': 'Conditions',
    },
    'ibylv1vn': {
      'id': 'Has your pet take any of these medical actions?',
      'en': 'Has your pet take any of these medical actions?',
    },
    '38mxdtqh': {
      'id': 'Vaccinated',
      'en': 'Vaccinated',
    },
    'vx002j8m': {
      'id': 'Sterilised',
      'en': 'Sterilized',
    },
    'm15jj2x9': {
      'id': 'Issues',
      'en': 'Issues',
    },
    '7wu4kzf3': {
      'id': 'Does your pet having these issues?',
      'en': 'Does your pet having these issues?',
    },
    'mfliyo25': {
      'id': 'Fungus',
      'en': 'Fungus',
    },
    'jpu5y914': {
      'id': 'Fleas',
      'en': 'Fleas',
    },
    '56x2r85h': {
      'id': 'Worms',
      'en': 'Worms',
    },
    '9uuqyy8x': {
      'id': 'Earmites',
      'en': 'Earmites',
    },
    'miodyje6': {
      'id': 'Scabies',
      'en': 'scabies',
    },
    'c7z7zzd9': {
      'id': 'Diarrhea',
      'en': 'Diarrhea',
    },
    'cggqlu00': {
      'id': 'Add pet',
      'en': 'Add pet',
    },
    '0h6maper': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderList
  {
    'vzooszio': {
      'id': 'Orders',
      'en': 'Orders',
    },
    'ukelemoe': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // GroomingForm
  {
    '9llw7boq': {
      'id': 'Grooming',
      'en': 'Grooming',
    },
    'i23sw284': {
      'id': 'Alamat',
      'en': 'Address',
    },
    '74xv3zql': {
      'id': 'Pet',
      'en': 'Pet',
    },
    '3g16ejbc': {
      'id': 'Kucing',
      'en': 'Cat',
    },
    '520x57wg': {
      'id': 'Kucing',
      'en': 'Cat',
    },
    '5trys2zk': {
      'id': 'Pilih Jenis Peliharaan',
      'en': 'Choose a Pet Type',
    },
    'or0r1vfm': {
      'id': 'Servis',
      'en': 'Service',
    },
    'jp6so3tz': {
      'id': 'Mandi Kutu dan Jamur',
      'en': 'Flea and Fungus Bath',
    },
    '52e3l4oc': {
      'id': 'Mandi Kutu dan Jamur',
      'en': 'Flea and Fungus Bath',
    },
    'o15mxtcu': {
      'id': 'Pilih Servis',
      'en': 'Choose Service',
    },
    'p4q8jx4s': {
      'id': 'Jumlah pet',
      'en': 'Number of pets',
    },
    'sa4e57p8': {
      'id': 'Tanggal grooming',
      'en': 'Grooming date',
    },
    '0qfpwngs': {
      'id': 'Waktu grooming',
      'en': 'Grooming time',
    },
    'q0pbfccn': {
      'id': 'Pagi',
      'en': 'Morning',
    },
    'bhegat8w': {
      'id': 'Pagi',
      'en': 'Morning',
    },
    'l8j675sm': {
      'id': 'Siang',
      'en': 'Afternoon',
    },
    'wwcm5yi5': {
      'id': 'Sore',
      'en': 'Afternoon',
    },
    'ml4dy772': {
      'id': 'Malam',
      'en': 'Evening',
    },
    'bbhuj9g4': {
      'id': 'Pilih Waktu',
      'en': 'Choose Time',
    },
    'c5acn72q': {
      'id': 'Panggil Groomer',
      'en': 'Call Groomer',
    },
    '0noc3ghi': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // SelectGeoLocation
  {
    'ge0dbgiy': {
      'id': 'Location',
      'en': 'Location',
    },
    '5y73tkqd': {
      'id': 'Ketik alamat lengkap, jalan, rt, rw, kecamatan, kota, kode pos',
      'en':
          'Type full address, street, rt, rw, sub-district, city, postal code',
    },
    'vjbj9ex6': {
      'id': 'Save',
      'en': 'Save',
    },
    'rp2pnmn9': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // GroomingDetail
  {
    'hb3k3mor': {
      'id': 'Grooming Detail',
      'en': 'Grooming Details',
    },
    '0bzjn16q': {
      'id': 'Layanan',
      'en': 'Service',
    },
    'pxj6xaoo': {
      'id': ' - ',
      'en': '-',
    },
    '3keb58t6': {
      'id': ' - ',
      'en': '-',
    },
    'lt5kits5': {
      'id': ' x ',
      'en': 'x',
    },
    'j0w61tc9': {
      'id': 'Customer',
      'en': 'Customers',
    },
    'x48cb4el': {
      'id': 'Groomer',
      'en': 'groomer',
    },
    '1qrmwoaq': {
      'id': 'Call',
      'en': 'call',
    },
    'p0ykjswk': {
      'id': 'Pembayaran',
      'en': 'Payment',
    },
    's2729dyw': {
      'id': 'Service Fee',
      'en': 'Service Fee',
    },
    'ktw1fh3s': {
      'id': 'Potongan',
      'en': 'Piece',
    },
    '1z49ksj9': {
      'id': 'Total',
      'en': 'Total',
    },
    'wpm0w2is': {
      'id': 'Bayar',
      'en': 'Pay',
    },
    'a08cc29c': {
      'id': 'Catatan',
      'en': 'Notes',
    },
    'vivdhw1t': {
      'id': 'Home',
      'en': 'Home',
    },
    'wfubp9nt': {
      'id': 'Butuh Bantuan?',
      'en': 'Need help?',
    },
    '54gyep7h': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // AddressForm
  {
    '33tkmff4': {
      'id': 'Address',
      'en': 'Address',
    },
    '3ukxsp9i': {
      'id': 'Full address',
      'en': 'Full address',
    },
    '8mukry14': {
      'id': 'Detail location',
      'en': 'Location details',
    },
    '251wresa': {
      'id': 'Save address',
      'en': 'Save address',
    },
    '6w4yd204': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PhoneSignIn
  {
    'pkcww6wn': {
      'id': '+62',
      'en': '+62',
    },
    'oo7wd4zn': {
      'id': 'No Handphone',
      'en': 'Mobile Number',
    },
    'ahzxqr3x': {
      'id': '801234567',
      'en': '801234567',
    },
    'qh0nkb8h': {
      'id': 'Sign In',
      'en': 'Sign In',
    },
    'gkqhqcmz': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PhoneVerification
  {
    'j0iault8': {
      'id': 'Verifikasi',
      'en': 'Verification',
    },
    'elbifdxy': {
      'id': 'Masukkan kode 6 digit',
      'en': 'Enter the 6 digit code',
    },
    'xadbmqvp': {
      'id': '000000',
      'en': '000000',
    },
    'shu0y7mh': {
      'id': 'Lanjut',
      'en': 'Carry on',
    },
    'g3904lx0': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // SignUp
  {
    'vr2v0qm7': {
      'id': 'Nama lengkap',
      'en': 'Full name',
    },
    'sg4ugq5c': {
      'id': 'Masukkan nama lengkap...',
      'en': 'Enter full name...',
    },
    'bw7rio3j': {
      'id': 'Alamat email',
      'en': 'Email address',
    },
    'w56n9y2d': {
      'id': 'Masukkan alamat email...',
      'en': 'Enter email address...',
    },
    'j5yjkov6': {
      'id': 'Simpan Profil',
      'en': 'Save Profile',
    },
    'fx9mwdfb': {
      'id': 'Sign Up',
      'en': 'Sign Up',
    },
    'q7hotk4p': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PetProfile
  {
    'e9zlhhu8': {
      'id': 'Profile',
      'en': 'Profile',
    },
    'cz0l03tz': {
      'id': 'Upcoming',
      'en': 'Upcoming',
    },
    'cbjcvpjf': {
      'id': 'View All',
      'en': 'View All',
    },
    'lexdu9oa': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Article
  {
    'dkbnletr': {
      'id': 'Article',
      'en': 'Article',
    },
    'dwesld7d': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Help
  {
    '1aqfdhby': {
      'id': 'Help Center',
      'en': 'Help Center',
    },
    'jyktpnup': {
      'id': 'Butuh bantuan kami?',
      'en': 'Need our help?',
    },
    'y1y2dj3o': {
      'id': 'Kru Allnimall dengan senang hati akan membantu kakak semua!',
      'en': 'Allnimall crew will be happy to help you all!',
    },
    '3s8x0iy2': {
      'id': 'Chat',
      'en': 'Chat',
    },
    'ymmuscst': {
      'id': 'Chat langsung  dengan kru Allnimall',
      'en': 'Live chat with Allnimall crew',
    },
    'm9euk7go': {
      'id': 'FAQs',
      'en': 'FAQs',
    },
    '0l99cwsd': {
      'id': 'Temukan jawaban atas pertanyaan-pertanyaan kamu',
      'en': 'Find answers to your questions',
    },
    'g5q59wq2': {
      'id': 'Request Features',
      'en': 'Request Features',
    },
    'z69aon2o': {
      'id': 'Ada fitur yang kakak inginkan? Yuk kasih tau kru Allnimall',
      'en':
          'Is there a feature that you want? Let&#39;s tell the Allnimall crew',
    },
    'o7yegmt5': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // RequestFeature
  {
    'fyug81ow': {
      'id': 'Aplikasi Milik Bersama',
      'en': 'Shared Apps',
    },
    'zbw55x1l': {
      'id': 'Kakak ingin kami membangun fitur apa?',
      'en': 'What feature do you want us to build?',
    },
    '13amvh9j': {
      'id': 'I want Allnimall adds...',
      'en': 'I want Allnimal adds...',
    },
    '62jatugt': {
      'id': 'Kirim Permintaan',
      'en': 'Send Inquiry',
    },
    'g0nun7fv': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Chat
  {
    'wnb2mvtm': {
      'id': 'Chat',
      'en': 'Chat',
    },
    'sec24cqc': {
      'id': 'Me',
      'en': 'Me',
    },
    '3g6na1tg': {
      'id': ' from Allnimall',
      'en': 'from Allnimal',
    },
    'pov8ylz9': {
      'id': 'Put your message here...',
      'en': 'Put your message here...',
    },
    'e2qphk6d': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PetPost
  {
    'g4ss0uqh': {
      'id': 'Create Post',
      'en': 'Create Post',
    },
    'qorlx9gn': {
      'id': 'Post',
      'en': 'Post',
    },
    'okuwaap0': {
      'id': 'Tell us your updates...',
      'en': 'Tell us your updates...',
    },
    'uli9icu6': {
      'id': 'Photo',
      'en': 'Photo',
    },
    'ybmis9ab': {
      'id': 'Update weight',
      'en': 'Update weight',
    },
    'nl92zfws': {
      'id': 'Update condition',
      'en': 'Update conditions',
    },
    'o2cf7s6r': {
      'id': 'Mood',
      'en': 'Mood',
    },
    'rx805sxs': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // UpdatePet
  {
    'bu42gq16': {
      'id': 'Update Pet',
      'en': 'Pet Updates',
    },
    'jyd2m5s2': {
      'id': 'Change picture',
      'en': 'Change picture',
    },
    'fvvr4agf': {
      'id': 'Pet\'s name',
      'en': 'Pet&#39;s name',
    },
    '1znvm6xj': {
      'id': 'Pet\'s sex',
      'en': 'Pet&#39;s sex',
    },
    '2muqbyh7': {
      'id': 'Female',
      'en': 'female',
    },
    '2ouy0bfk': {
      'id': 'Male',
      'en': 'Male',
    },
    '2tcqqwqr': {
      'id': 'Pet\'s breed',
      'en': 'Pet&#39;s breed',
    },
    'bybjr7dc': {
      'id': 'Save',
      'en': 'Save',
    },
    '17m8apoo': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PetSchedule
  {
    '7p8t0xyl': {
      'id': 'Schedule',
      'en': 'Schedule',
    },
    '7w8x0qt1': {
      'id': 'Add',
      'en': 'Add',
    },
    'krj4fgxh': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // AddSchedule
  {
    '5bkm1g5u': {
      'id': 'Create Plan',
      'en': 'Create Plan',
    },
    'ovw55ner': {
      'id': 'Name',
      'en': 'Name',
    },
    'sy541fzx': {
      'id': 'Desciption',
      'en': 'Desciption',
    },
    'ccdawajd': {
      'id': 'Duration',
      'en': 'Duration',
    },
    'axg1hzbv': {
      'id': 'minute',
      'en': 'minute',
    },
    'xcxs956o': {
      'id': 'minute',
      'en': 'minute',
    },
    'at3tqt1o': {
      'id': 'hour',
      'en': 'hour',
    },
    '8mpc4rcp': {
      'id': 'Add plan',
      'en': 'Add plan',
    },
    '0fkoe3xm': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Timeline
  {
    '5bvpzafb': {
      'id': 'Timeline',
      'en': 'Timeline',
    },
    'wkrwnp1q': {
      'id': ' loves',
      'en': 'loves',
    },
    'cjki31n2': {
      'id': 'Timeline',
      'en': 'Timeline',
    },
  },
  // PetList
  {
    'e5d9p431': {
      'id': 'My Pets',
      'en': 'My Pets',
    },
    'i5mow5o3': {
      'id': 'New pet',
      'en': 'New pet',
    },
    'sdb6gzq1': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // EditProfile
  {
    '0621d69r': {
      'id': 'Edit Profile',
      'en': 'Edit Profile',
    },
    'e1dfhjyt': {
      'id': 'Change picture',
      'en': 'Change picture',
    },
    'trl0dlh5': {
      'id': 'Pet\'s name',
      'en': 'Pet&#39;s name',
    },
    'zyuhfou4': {
      'id': 'Gender',
      'en': 'Gender',
    },
    'geymjvbi': {
      'id': 'Female',
      'en': 'female',
    },
    'erebzh0p': {
      'id': 'Male',
      'en': 'Male',
    },
    'j1c1ash0': {
      'id': 'Save',
      'en': 'Save',
    },
    '4mdm2xzt': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // HomeBackup
  {
    '1guaxhbu': {
      'id': 'Allnimall',
      'en': 'Allnimal',
    },
    'shu9orlb': {
      'id': 'Halo kak!',
      'en': 'Hello sis!',
    },
    'kgt8v66r': {
      'id': 'Mau grooming kucing?',
      'en': 'Want cat grooming?',
    },
    '21lhnjov': {
      'id': 'Panggil Groomer',
      'en': 'Call Groomer',
    },
    'e8uqjh7a': {
      'id': 'Artikel',
      'en': 'Article',
    },
    '1wqaryi7': {
      'id': 'Order',
      'en': 'Order',
    },
    'vm432p6n': {
      'id': 'Lihat Semua',
      'en': 'View All',
    },
    '2cmw9q51': {
      'id': 'Panggil Groomer',
      'en': 'Call Groomer',
    },
    'ibxx4i8g': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // Settings
  {
    'pw2ggh00': {
      'id': 'Settings',
      'en': 'Settings',
    },
    'bkyrp5h0': {
      'id': 'Help',
      'en': 'Help',
    },
    'nplrk4dd': {
      'id': 'Find the best solutions by talking to us',
      'en': 'Find the best solutions by talking to us',
    },
    'kttpb749': {
      'id': 'Order',
      'en': 'Order',
    },
    'yqx9fbhb': {
      'id': 'Manage all your orders here',
      'en': 'Manage all your orders here',
    },
    'ty55d87m': {
      'id': 'Log Out',
      'en': 'Log Out',
    },
    'm7m6c07a': {
      'id': 'Bye! Come around anytime',
      'en': 'Bye! Come around anytime',
    },
    'u8ltj0r8': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // GroomingSummary
  {
    'qpvwtwze': {
      'id': 'Alamat',
      'en': 'Address',
    },
    '7fwthd2w': {
      'id': 'Edit',
      'en': 'Edit',
    },
    'px30cvdm': {
      'id': 'Order',
      'en': 'Order',
    },
    'eb4xs6bz': {
      'id': 'Edit',
      'en': 'Edit',
    },
    'om5h4qz2': {
      'id': ' - ',
      'en': '-',
    },
    'hapslj9a': {
      'id': ' x ',
      'en': 'x',
    },
    'v2c1zej6': {
      'id': 'Potongan',
      'en': 'Piece',
    },
    '9kcvj1bf': {
      'id': 'Diskon Aplikasi',
      'en': 'App Discount',
    },
    'omfz2e0x': {
      'id': '20.000 / pet',
      'en': '20,000 / pet',
    },
    'nh3ip0mq': {
      'id': 'Summary',
      'en': 'Summary',
    },
    'wltdkd8j': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PaymentMethod
  {
    'mlvk3c76': {
      'id': 'Pembayaran',
      'en': 'Payment',
    },
    '9n4d6veo': {
      'id': 'Total yang harus dibayar',
      'en': 'Total to be paid',
    },
    'rne616lq': {
      'id': 'Transfer Bank',
      'en': 'Bank transfer',
    },
    '1w374732': {
      'id': 'Bank BCA',
      'en': 'Bank BCA',
    },
    'e096ocvy': {
      'id': '5790285478',
      'en': '5790285478',
    },
    'vxsm24qp': {
      'id': 'Bank Mandiri',
      'en': 'Mandiri Bank',
    },
    '1rwn36ai': {
      'id': '1230005921541',
      'en': '1230005921541',
    },
    '1jiqsxnx': {
      'id': 'Cara Bayar',
      'en': 'How to Pay',
    },
    '4zi9cw6g': {
      'id': '1.',
      'en': '1.',
    },
    '08rc5jgm': {
      'id':
          'Transfer ke salah satu nomor rekening di atas sesuai jumlah yang harus dibayar.',
      'en':
          'Transfer to one of the account numbers above according to the amount to be paid.',
    },
    '1xab8725': {
      'id': '2.',
      'en': '2.',
    },
    'afwtpu61': {
      'id':
          'Share screenshoot bukti transfer kamu dengan menekan tombol Konfirmasi di bawah.',
      'en':
          'Share a screenshot of your proof of transfer by pressing the Confirm button below.',
    },
    '6f6y92t3': {
      'id': 'Konfirmasi Pembayaran',
      'en': 'Payment confirmation',
    },
    'vmzlx7qy': {
      'id': 'Home',
      'en': 'Home',
    },
    '20n721iw': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderGrooming
  {
    'xj2dmd00': {
      'id': 'Grooming',
      'en': 'Grooming',
    },
    '1yefum5g': {
      'id': 'Panggil Groomer',
      'en': 'Call Groomer',
    },
    'vula87gl': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderGroomingService
  {
    'us5mi1ap': {
      'id': 'Layanan',
      'en': 'Service',
    },
    'yy4vd5no': {
      'id': 'Jumlah pet',
      'en': 'Number of pets',
    },
    'tcimovkd': {
      'id': '1',
      'en': '1',
    },
    '45y00u4y': {
      'id': '1',
      'en': '1',
    },
    'f6ls85da': {
      'id': '2',
      'en': '2',
    },
    'm448vwiz': {
      'id': '3',
      'en': '3',
    },
    'x160uejt': {
      'id': '4',
      'en': '4',
    },
    'c7dcf61w': {
      'id': '5',
      'en': '5',
    },
    'tnag9szu': {
      'id': '6',
      'en': '6',
    },
    'l5hkh5cb': {
      'id': '7',
      'en': '7',
    },
    'm67p9bav': {
      'id': '8',
      'en': '8',
    },
    'fa0padmp': {
      'id': '9',
      'en': '9',
    },
    '4ftki7k3': {
      'id': '10',
      'en': '10',
    },
    '25i3wfw4': {
      'id': 'Jumlah pet',
      'en': 'Number of pets',
    },
    '9gvsx8w9': {
      'id': 'Kategori pet',
      'en': 'pet category',
    },
    'py9yxdd4': {
      'id': 'Kucing',
      'en': 'Cat',
    },
    'ue7pig5v': {
      'id': 'Kucing',
      'en': 'Cat',
    },
    'pyr8v9bn': {
      'id': 'Pilih pet',
      'en': 'Choose a pet',
    },
    '9tt4ob7h': {
      'id': 'Layanan',
      'en': 'Service',
    },
    'duq0q3fr': {
      'id': 'Pilih Layanan',
      'en': 'Call Groomer',
    },
    'u6nfd7lt': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderGroomingSchedule
  {
    '2plzp3ov': {
      'id': 'Jadwal',
      'en': 'Timetable',
    },
    'rsdmox0m': {
      'id': 'Tanggal Grooming',
      'en': 'Grooming Date',
    },
    'ks27s9h3': {
      'id': 'Waktu Grooming',
      'en': 'Grooming Time',
    },
    'bwcqkmqs': {
      'id': 'Pagi ',
      'en': 'Morning',
    },
    '2i1eix49': {
      'id': 'Siang',
      'en': 'Afternoon',
    },
    'yg2kx93j': {
      'id': 'Sore',
      'en': 'Afternoon',
    },
    '5d4yj1it': {
      'id': 'Pilih waktu',
      'en': 'Choose time',
    },
    'shylpsre': {
      'id': 'Backup Plan',
      'en': 'Backup Plan',
    },
    'tzq56v5j': {
      'id': 'Weekday / Hari Kerja',
      'en': 'Weekdays / Weekdays',
    },
    'ec0q5urg': {
      'id': 'Weekend / Hari Libur',
      'en': 'Weekends / Holidays',
    },
    'u15qvhcj': {
      'id': 'Pilih preferensi hari',
      'en': 'Choose day preference',
    },
    'uu0s4mep': {
      'id': 'Set Jadwal',
      'en': 'Set Schedule',
    },
    'i5cib40f': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderGroomingLocation
  {
    'esoabjjv': {
      'id': 'Lokasi',
      'en': 'Location',
    },
    'li2bj2rb': {
      'id': 'Tekan cari',
      'en': 'Press search',
    },
    'ifl05r5t': {
      'id': 'Cari',
      'en': 'Search',
    },
    'fid0f36u': {
      'id': 'Pilih lokasi',
      'en': 'Choose a location',
    },
    'd1tsnjt2': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // OrderServiceList
  {
    'yg8fthm1': {
      'id': 'Home',
      'en': 'Home',
    },
  },
  // PetWeightForm
  {
    '2hiw7ypw': {
      'id': 'Pet\'s weight',
      'en': 'Pet&#39;s weight',
    },
    'u623owbw': {
      'id': 'gr',
      'en': 'gr',
    },
    'x55j39qs': {
      'id': 'kg',
      'en': 'kg',
    },
  },
  // EmptySchedule
  {
    'q97kzhzp': {
      'id': 'You have no upcoming schedules',
      'en': 'You have no upcoming schedules',
    },
    '19k1rzuq': {
      'id': 'Create schedule',
      'en': 'Create schedule',
    },
  },
  // EmptyPet
  {
    'rjyauxf6': {
      'id': 'Add your pet',
      'en': 'Add your pet',
    },
    'xlyqzzdz': {
      'id':
          'Let\'s join our vast community and bring the best out of your pets',
      'en':
          'Let&#39;s join our vast community and bring the best out of your pets',
    },
    'sfer8jcj': {
      'id': 'Add',
      'en': 'Add',
    },
  },
  // EmptyScheduleNoPet
  {
    'dfhc4yi1': {
      'id':
          'You have no upcoming schedules.\nTo create schedule you must first add your pet',
      'en':
          'You have no upcoming schedules. To create schedule you must first add your pet',
    },
    'hogv89al': {
      'id': 'Add pet',
      'en': 'Add pet',
    },
  },
  // CreateOrderForm
  {
    'lfdr8ijm': {
      'id': 'Lokasi ',
      'en': 'Location',
    },
    '40tmcyw7': {
      'id': 'Layanan',
      'en': 'Service',
    },
    '6fk31ncn': {
      'id': 'Mandi, cukur, atau lainnya...',
      'en': 'Shower, shave or something else...',
    },
    'nkpbsn2s': {
      'id': 'Schedule',
      'en': 'Schedule',
    },
  },
  // CalendarPicker
  {
    'npikr64a': {
      'id': 'Pilih Tanggal',
      'en': 'Choose Date',
    },
    'g9a4y9a0': {
      'id': 'Pilih',
      'en': 'Choose',
    },
  },
  // Miscellaneous
  {
    'gnxsdohh': {
      'id': 'Kami membutuhkan akses untuk menggunakan kamera',
      'en': 'We need to accesss your camera',
    },
    'jrk91d2y': {
      'id': 'Kami membtuhkan akses ke galeri fotomu',
      'en': 'We need to access your gallery',
    },
    'g1365kge': {
      'id': 'Kami membutuhkan akses untuk lokasi kamu',
      'en': 'We need to access your location',
    },
    '4ir4dn0s': {
      'id': '',
      'en': '',
    },
    '5anznm16': {
      'id': '',
      'en': '',
    },
    'lc7nyd1t': {
      'id': '',
      'en': '',
    },
    '2wf9v1uw': {
      'id': 'Silahkan isi nomor HP',
      'en': 'Phone number required',
    },
    'fw5vgk4r': {
      'id': '',
      'en': '',
    },
    'dkka470o': {
      'id': '',
      'en': '',
    },
    'ufbdif6b': {
      'id': '',
      'en': '',
    },
    'r7mweklt': {
      'id': '',
      'en': '',
    },
    'q5k6sqzs': {
      'id': '',
      'en': '',
    },
    '16w5ynal': {
      'id': '',
      'en': '',
    },
    'oe33uoxe': {
      'id': '',
      'en': '',
    },
    'en9vhcdo': {
      'id': '',
      'en': '',
    },
    'gmudvd2q': {
      'id': '',
      'en': '',
    },
    '1ylgnsrf': {
      'id': '',
      'en': '',
    },
    'hnjr27cy': {
      'id': '',
      'en': '',
    },
    'pju97hj5': {
      'id': '',
      'en': '',
    },
    'hxjwrcf0': {
      'id': '',
      'en': '',
    },
    'wwvevza4': {
      'id': '',
      'en': '',
    },
    'qhzep9be': {
      'id': '',
      'en': '',
    },
    '7a3jgtyx': {
      'id': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
