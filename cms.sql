-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Des 2024 pada 10.36
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `carousel`
--

CREATE TABLE `carousel` (
  `id_carousel` int NOT NULL,
  `judul` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `carousel`
--

INSERT INTO `carousel` (`id_carousel`, `judul`, `foto`) VALUES
(17, 'Motivation1', '20241119014457.jpg'),
(18, 'Motivation2', '20241119014502.jpg'),
(19, 'Motivation3', '20241119014508.jpg'),
(20, 'Motivation4', '20241119014514.jpg'),
(21, 'Motivation5', '20241119014518.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(3, 'Novel'),
(4, 'Komik'),
(5, 'Biografi'),
(6, 'Kamus'),
(7, 'Panduan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int NOT NULL,
  `judul_website` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `profil_website` text COLLATE utf8mb4_general_ci NOT NULL,
  `facebook` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `instagram` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `no_wa` varchar(30) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `facebook`, `instagram`, `email`, `alamat`, `no_wa`) VALUES
(1, 'BookPedia', 'ArjunK', 'N/A', 'www.instagram.com/arjunkoemoro/', 'timothearjunkumoro@gmail.com', 'Ngijo Kulon', '62 813 2607 8437');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten`
--

CREATE TABLE `konten` (
  `id_konten` int NOT NULL,
  `judul` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `id_kategori` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(60) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`) VALUES
(33, 'Fur Immer Dein Ian - Valerie', 'Apakah ada yang lebih menyebalkan dari menyembunyikan perasaan atas nama pertemanan? Saling berdekatan tetapi harus menjaga jarak aman. Semata-mata agar yang kita cintai tetap merasa nyaman.\r\n\r\n\r\nSekuat hati mencoba untuk bersikap biasa saja. Nyatanya, setiap kata-kata yang keluar clan bibirnya adalah pemikat luar biasa. Setiap gerak-geriknya adalah candu yang tak bisa diabaikan begitu saja. Tentu, menjadi pengagum dalam diam penuh dengan tantangan.\r\n\r\nBagi Atika dan Damian, pertemuan tak sengaja mereka membawa harapan. Namun, rasanya mereka tak sanggup untuk sating membuka hati. Dan semua rasa lesap bersama udara dingin Munchen sore itu. Dua hati yang diam-diam sating mendambakan menjadi ragu, apakah mungkin bersatu?', '20241118153444.jpg', 'Fur-Immer-Dein-Ian---Valerie', '3', '2024-11-18', 'Admin'),
(34, 'Majnun - Anton Kurnia', 'Majnun adalah kisah tentang cinta dan persahabatan, sekaligus semacam catatan kaki atas sejarah yang dilupakan. Selain itu, pembelaan atas kebebasan dan gugatan terhadap ketidakadilan adalah pokok novel ini. Cerita mengalir dalam bayang-bayang ingatan dan luka masa lalu tokoh-tokohnya, berkelindan dengan riwayat sebuah negeri yang pernah dikoyak oleh kolonialisme, represi politik, dan konflik agama.\r\n\r\n“Novel Majnun karya Anton Kurnia adalah undangan untuk merasuki tubuh para pencinta dengan segala disorientasi kemabukan dan kegilaan. Diselubungi oleh Carmina Burana - simfoni yang senapas menuturkan tragedi kemanusiaan: sejarah kekerasan, kekuasaan, kepasrahan - novel ini membawa pembaca ke dalam kataklisme cinta.” - Saras Dewi, pengajar filsafat di Fakultas Ilmu Budaya Universitas Indonesia\r\n\r\n“Dalam Majnun, dengan luwes Anton Kurnia menghadirkan kembali dua kisah cinta termasyhur Laila-Majnun dan Yusuf-Zulaikha di dunia kita hari ini. Namun, membaca Majnun tak cuma kita temukan tema asmara,.Anton juga menyaling-silangkannya dengan mitos dalam budaya Sunda-Jawa serta ragam persoalan sosial-politik sembari dengan nakal menyisipkan elemen biografis. Sebuah permainan interteks yang. menarik.” - Sunlie Thomas Alexander, sastrawan dan kritikus sastra', '20241118153621.jpg', 'Majnun---Anton-Kurnia', '3', '2024-11-18', 'Admin'),
(35, 'Funiculi Funicula - Toshikazu Kawaguchi', 'Di sebuah gang kecil di Tokyo, ada kafe tua yang bisa membawa pengunjungnya menjelajahi waktu. Keajaiban kafe itu menarik seorang wanita yang ingin memutar waktu untuk berbaikan dengan kekasihnya, seorang perawat yang ingin membaca surat yang tak sempat diberikan suaminya yang sakit, seorang kakak yang ingin menemui adiknya untuk terakhir kali, dan seorang ibu yang ingin bertemu dengan anak yang mungkin takkan pernah dikenalnya.\r\n\r\nNamun ada banyak peraturan yang harus diingat. Satu, mereka harus tetap duduk di kursi yang telah ditentukan. Dua, apa pun yang mereka lakukan di masa yang didatangi takkan mengubah kenyataan di masa kini. Tiga, mereka harus menghabiskan kopi khusus yang disajikan sebelum kopi itu dingin. Rentetan peraturan lainnya tak menghentikan orang-orang itu untuk menjelajahi waktu. Akan tetapi, jika kepergian mereka tak mengubah satu hal pun di masa kini, layakkah semua itu dijalani?', '20241118154238.jpg', 'Funiculi-Funicula---Toshikazu-Kawaguchi', '3', '2024-11-18', 'Admin'),
(36, 'Where Stories Begin - Wacaku', 'Where Stories Begin adalah antologi cerpen hasil kurasi Redaksi Novel Elex Media dari perlombaan yang diadakan oleh Wacaku. Where Stories Begin menyuguhkan cerita pendek dari sepuluh penulis yang terpilih dari perlombaan yang diadakan pada 2022 lalu. Cerita-cerita karya Stanza Alquisha, Maria Perdana, Robin Wijaya, Arata Kim, Kanigara, Meera, Nureesh Vhalega, Ratifa Mazari, Tian Topandi, dan Zaidatul Uyun Akrami mengisahkan bahwa perkara cinta tak melulu soal kebahagiaan. Bahwa cinta tak selalu semanis gulali, dan indah seperti gumpalan awan merah muda. Because these are where stories begin….', '20241118154508.jpg', 'Where-Stories-Begin---Wacaku', '3', '2024-11-18', 'Admin'),
(37, 'Oh My Savior - Washashira', 'Mencintai cowok sempurna seperti Zidane Hamizan adalah tantangan sekaligus keberuntungan bagi Zelda Farzana atau yang biasa dipanggil Zee. Cowok yang semua love language-nya bisa digunakan dan pemilik sifat penolong tanpa pamrih. Zee sendiri, adalah gadis yang sejak lahir hidupnya serba kekurangan dan harus bekerja keras demi bisa bertahan hidup bersama Ibu Peri dan adik-adiknya di panti.\r\n\r\nBagi Zelda, Zidane adalah pangeran bersayap putih yang dapat membawanya terbang jauh dan diselimuti kehangatan. Bagi Zidane, Zelda adalah peri cantik paling bersinar yang ingin terus ia lindungi. Mereka begitu indah sampai akhirnya masa lalu Zidane yang disembunyikannya selama ini membuat Zelda kehilangan keyakinan. Tidak, Zelda tidak ingin berhubungan dengan seseorang yang belum selesai dengan masa lalunya.\r\n\r\nJadi, apakah Zidane benar-benar memegang ucapannya untuk tidak meninggalkan Zelda, bahkan demi masa lalunya? Atau pada akhirnya justru Zelda sendiri yang memaksa Zidane untuk pergi?”', '20241118154732.jpg', 'Oh-My-Savior---Washashira', '3', '2024-11-18', 'Admin'),
(38, 'Death Note Short Stories --Tsugumi Ohba', 'Berisikan 12 cerita pendek yang berbeda, sekuel ini melibatkan berbagai negara yang berjuang untuk memiliki buku tersebut, bahkan salah satunya bercerita tentang A-Kira yang menampilkan sosok Donald Trump secara pribadi bertemu dengan Shinigami Ryuk. Ada pula cerita C-Kira hingga tentang kehidupan L sebelum akhirnya \'dimatikan\' oleh sang komikus. Bikin penasaran ya, kira-kira kejutan apalagi yang ada di dalam bukunya?', '20241119014944.jpg', 'Death-Note-Short-Stories---Tsugumi-Ohba', '4', '2024-11-19', 'Admin'),
(39, 'Akasha Record of Ragnarok 06 - Shinya Umemura dan Takumi Fukui', 'Dalam volume kali ini kamu akan mengetahui kisah bagaimana terlahirnya pembunuh terkejam sepanjang sejarah, juga perjuangan pendakian Heracles menuju Olympus. Lalu, mari kita lihat apakah Heracles dapat menerima satu serangan dari lelaki yang hidup dalam keputusasaan, tumbuh dalam kegilaan, dan dipenuhi oleh niat jahat itu!?', '20241119015038.jpg', 'Akasha-Record-of-Ragnarok-06---Shinya-Umemura-dan-Takumi-Fukui', '4', '2024-11-19', 'Admin'),
(40, 'Blue Lock 01 - Muneyuki Kaneshiro dan Yusuke Nomura', 'Blue Lock merupakan manga bertema olahraga, tepatnya sepak bola, yang rilis pertama kali pada 1 Agustus 2018 di majalah Weekly Shonen Magazine. Mengisahkan tentang seorang laki-laki bernama Isagi Yoichi yang masuk sebuah lembaga sepakbola bernama Japan Football Union (JFU), bersama 299 peserta lainnya untuk mengembangkan bakat dan ego mereka demi menjadi seorang striker terbaik yang selalu haus akan kemenangan. Sebelumnya, Jepang mengalami kekalahan di Piala Dunia 2018 dan striker kebanggaan mereka hilang begitu saja. Apakah Yoichi Isagi mampu bertahan dan bersaing dengan para penyerang lainnya demi mewujudkan impiannya bermain sebagai penyerang timnas Jepang dan memenangkan Piala Dunia?', '20241119015158.jpg', 'Blue-Lock-01---Muneyuki-Kaneshiro-dan-Yusuke-Nomura', '4', '2024-11-19', 'Admin'),
(41, 'SPY X Family 01 - Endo Tetsuya', 'Manga yang kini tengah naik daun berkat serial animenya yang sedang on going, semakin membuat komik ini dicari-cari. Bercerita tentang keluarga Forger yang bukanlah keluarga biasa, dengan rahasia yang mereka sembunyikan. Sang ayah adalah seorang agen rahasia terhebat dan sang ibu adalah seorang pembunuh. Sang anak pun memiliki kemampuan untuk membaca pikiran. Meski mereka hanyalah keluarga palsu yang saling menyimpan rahasia satu sama lain, ternyata kehangatan juga muncul di sana. Komik ini berisi penuh oleh aksi dan keseruan. Dari chapter awal kita sudah dibawa ke dunia mata-mata yang menegangkan milik Loid dan kita juga akan menemukan keimutan dan kelucuan dari Anya. Kontras antara dua hal inilah yang membuat manga Spy x Family menarik. Sungguh sebuah perpaduan yang diracik dengan cerita yang penuh emosi dan manusiawi!', '20241119015251.jpg', 'SPY-X-Family-01---Endo-Tetsuya', '4', '2024-11-19', 'Admin'),
(42, 'Hai Miiko 34 -  Ono Eriko', 'Hingga saat ini, cerita manis dari Miiko selalu menjadi penarik perhatian terbanyak. Pada volume ini, hari-hari Miiko dan kawan-kawan di SD Suginoki telah usai. Sambil menyimpan semua kenangan indah dalam hati, mereka kini melangkah maju sebagai murid SMP. Gedung sekolah baru, cinta baru, persahabatan baru, juga keseruan baru telah menanti, tak ketinggalan tentunya rasa haru yang akan melengkapi jalan ceritanya. Membaca komik ini akan buat kamu capek, tapi capek tertawa dan senyum-senyum sendiri karena melihat tingkah lucu mereaka. Ada cerita Miiko yang baru mulai masuk SMP dan bingung harus memilih ikut klub sekolah yang mana, antara menuruti keinginan sendiri atau teman.\r\n\r\nJuga teman-teman Miiko yang merasa sedih karena sendirian dan sekolahnya berbeda. Ada juga yang ditembak kakak kelas dan gosipnya langsung menyebar ke satu sekolah, atau yang paling receh, perkara teman nggak mengembalikan penghapus kita!', '20241119015332.jpg', 'Hai-Miiko-34----Ono-Eriko', '4', '2024-11-19', 'Admin'),
(43, 'Kamus Geografi Edisi Tematik Dan Visual ', '\r\nBanyak sekali istilah-istilah yang tertuang dalam ilmu geografi. Hal ini dipengaruhi oleh beragamnya objek yang dikaji. Mulai dari aspek fisik hingga aspek sosial, masing-masing menyuguhkan kemewahan suatu fenomena. Fenomena-fenomena tersebut di bagiannya tersusun oleh suatu rupa, istilah, dan perbendaharaan kata. Misalnya, apa yang dimaksud dengan azimuth, delta, tombolo, dan antiklinal itu?\r\n\r\nKamus geografi ini merupakan hasil rancangan khusus sebagai terobosan perdana, yaitu istilah-istilah yang terlampir di dalamnya disusun secara tematik per pokok bahasan. Serta tiap bab disertai dengan gambar-gambar objek atau fenomena geografi, sehingga akan lebih mudah mencerna, juga lebih akurat dalam menganalisis, membandingkan, dan mengidentifikasi ragam istilah yang tersaji dalam aspek sosial maupun fisik/alam.\r\n\r\nBuku Kamus Geografi Edisi Tematik dan Visual disusun untuk membantu dan mempermudah para siswa, mahasiswa, para guru dan dosen, maupun para aktivis Lembaga Swadaya Masyarakat (LSM), dalam proses mempelajari, maupun berkegiatan mengaplikasi wawasan geografi di lapangan. Dengan demikian, sajian buku kamus yang tersusun secara visual ini dapat meningkatkan wawasan dan sistem pembelajaran materi kebumian yang berkualitas sesusai dengan visi, misi, dan tata nilai akademika.\r\n\r\n\r\n', '20241119015754.jpg', 'Kamus-Geografi-Edisi-Tematik-Dan-Visual-', '5', '2024-11-19', 'Admin'),
(44, 'Ensiklopedia Geografi Dengan Atlas Dunia Lengkap - Edisi Revisi', 'Buku terbaru ini mengenalkan kalian pada bidang geografi, mulai dari bebatuan dan pembetukannya ; sistem tata surya; cuaca dan iklim; samudra; hingga kependudukan manuasia, populasi terkini, macam -macam ekosistem dan keprihatinan lingkungan.', '20241119020251.jpg', 'Ensiklopedia-Geografi-Dengan-Atlas-Dunia-Lengkap---Edisi-Revisi', '5', '2024-11-19', 'Admin'),
(45, 'SMA Kelas 10 Geografi 1 Kurikulum 2013', 'Geografi adalah ilmu yang mempelajari tentang hubungan, persamaan, dan perbedaan antar ruang di bumi. Pusat kajian geografi adalah hubungan manusia dan lingkungannya. Secara umum, geografi terbagi menjadi dua cabang keilmuan yaitu geografi fisik dan geografi manusia. Setelah tahun 1945, geografi lebih diarahkan ke ilmu sosial dan mengutamakan kajian tentang geografi manusia. Geografi memiliki konsep-konsep penting yang digunakan untuk memahami hubungan, bentuk, dan fungsi peristiwa alam dan peristiwa sosial.\r\n\r\nBuku ini memuat materi pelajaran geografi secara lengkap, jelas, dan sesuai dengan Kurikulum 2013 Revisi. Penyusunan buku ini diarahkan untuk membantu peserta didik dan guru dalam proses belajar mengajar. Oleh karena itu, buku geografi untuk SMA dan MA ini disajikan dengan kemasan yang khas dan menarik. Untuk mempermudah memahami materi yang dibahas pada tiap bab, buku ini juga dilengkapi dengan fitur-fitur sebagai berikut : 1) Nilai Karakter berisi sikap-sikap yang dapat dikembangkan setelah mempelajari materi dalam suatu bab. 2) Peta Konsep berisi sejumlah konsep penting yang akan dipelajari dan perlu dipahami oleh peserta didik. 3) Apersepsi berupa pengantar materi pada bagian awal bab untuk membangkitkan rasa keingintahuan peserta didik serta memberikan gambaran materi yang akan dipelajari. 4) Geografika berisi informasi tambahan untuk memberikan wacana baru dan memperluas cakrawala pengetahuan peserta didik, 5) Tugas dan Evaluasi untuk menguji penguasaan materi yang dipelajari pada tiap bab.', '20241119020607.jpg', 'SMA-Kelas-10-Geografi-1-Kurikulum-2013', '5', '2024-11-19', 'Admin'),
(46, 'Geografi Lingkungan Sebuah Introduksi', 'Isu-isu lingkungan baik dalam skala lokal sampai skala global tetap menjadi salah satu persoalan pelik yang dihadapi oleh umat manusia, karena pada realitanya, “bumi kian ringkih, penduduk bumi semakin galau”.\r\n\r\nBuku “Geografi Lingkungan: Sebuah Introduksi” merupakan salah satu upaya untuk mempermudah dalam mempelajari lingkungan hidup yang dibentuk oleh permukaan bumi. Bumi sendiri dengan berbagai aspeknya telah lama dikaji oleh ilmu Geografi, sehingga untuk bisa mengenal lingkungan hidup dengan lebih jauh, mulailah dari memiliki pemahaman mengenai bumi sebagai sebuah planet.\r\n\r\nKehadiran buku ini, diharapkan bisa menjadi referensi belajar maupun bacaan, sehingga buku ini dapat berkontribusi dalam mencari solusi secara sinergis dan komprehensif untuk menghadapi isu-isu krusial yang terdapat di bidang lingkungan. Marilah kita sadari, bahwa umat manusia hanya memiliki satu bumi, kenali bumi dan kelola lingkungan secara baik dan bijaksana serta bertanggung jawab demi anak cucu sebagai salah satu generasi penerus.', '20241119020829.jpg', 'Geografi-Lingkungan-Sebuah-Introduksi', '5', '2024-11-19', 'Admin'),
(47, 'CMS (Cepat Menguasai Soal) HOTS Geografi SMA', 'Kesuksesan dapat diraih dengan kerja keras. Salah satu cara meraih kesuksesan di bidang akademik adalah dengan belajar. Kesuksesan di bidang akademik merupakan salah satu penentu kesuksesan pelajar di masa depan. Untuk itu penerbit Bumi Aksara menyusun buku SMA/MA Kelas X XI XII CMS (Cepat Menguasai Soal) Geografi HOTS ini sebagai pendamping para siswa dalam proses belajar demi meraih kesuksesan.\r\n\r\nBuku yang diterbitkan tahun 2019 ini disusun secara sistematis untuk mempermudah pelajar memahami materi dan menyelesaikan berbagai contoh soal sebagai persiapan Ujian Sekolah, Ujian Nasional, dan Ujian Masuk Perguruan Tinggi Negeri. Secara umum buku ini dibagi menjadi tiga bagian pada setiap bab.\r\n\r\nBagian pertama berisi rangkuman materi yang bertujuan untuk memudahkan pelajar mengingat materi dalam setiap bab. Bagian kedua berisi soal latihan dan pembahasannya yang bertujuan memberikan solusi penyelesaian soal-soal Ujian Sekolah, Ujian Nasional, dan Ujian Masuk Perguruan Tinggi Negeri. Bagian ketiga adalah soal pemantapan dan soal SBMPTN untuk mengasah kemampuan mengerjakan soal agar mendapatkan nilai maksimal saat ujian.\r\n\r\nPada bagian akhir buku, terdapat kumpulan soal HOTS (High Order Thinking Skill) beserta pembahasannya untuk memperdalam pemahaman pelajar terhadap materi. Buku ini diperuntukkan bagi siswa-siswi SMA dan MA kelas 12 yang akan segera menjalani ujian untuk memperdalam dan menguji pemahaman mereka terhadap pelajaran Geografi.', '20241119020931.jpg', 'CMS-(Cepat-Menguasai-Soal)-HOTS-Geografi-SMA', '5', '2024-11-19', 'Admin'),
(48, 'English Vocabulary for Daily Conversation', 'Buku yang praktis untuk belajar bahasa Inggris secara mandiri agar dapat berkomunikasi efektif dengan penutur asing. Ilustrasi komiknya selain menyenangkan dan menarik, juga membantu pembaca untuk jauh lebih memahami penggunaan vocabulary dalam beberapa percakapan ringan. Kumpulan kosa bahasa Inggris yang orang-orang gunakan sehari-hari. Disajikan beserta contoh percakapan dalam berbagai macam situasi.\r\n\r\nBuku ini akan sangat membantu pembaca untuk belajar bahasa Inggris agar menangkap setiap kata dan frasa yang cukup untuk penggunaan sehari-hari dengan mudah. Hal ini dikarenakan dengan cukup mudahnya materi dan pembelajaran yang terdapat dalam buku ini, antara lain: percakapan dalam komik, kosakata yang disusun secara tematik, penggunaan kosakata dalam kalimat, penggunaan kosakata dalam percakapan dan percakapan di berbagai suasana dan acara.\r\n\r\nDisusun secara tematik agar lebih mudah dipelajari. Buku ini dapat membantu pembaca yang ingin menguasai percakapan dalam bahasa Inggris dengan cara menghafalkan kosakata yang sering digunakan dan mengaplikasikannya dalam percakapan sederhana.\r\n\r\n“This book will help beginner english learners to grab easily words ond phrases sufficient for daily use. You can rewrite and paste them on things at home to make those words stored in your memory. Don\'t forget to use them in sentences as often as you can.\"', '20241119021153.jpg', 'English-Vocabulary-for-Daily-Conversation', '6', '2024-11-19', 'Admin'),
(49, 'Kamus Lengkap Bahasa Jepang', 'Buku ini memuat ribuan entri kosakata bahasa Jepang. Entri kosakata tersebut mencakup kosakata Jepang-Indonesia dan Indonesia-Jepang. Setiap kosakata Jepang, disertai tulisan kanji (Hiragana dan Katakana) dan cara membacanya dalam ejaan latinnya. Isi buku juga ditunjang oleh sejumlah bonus, yang bukan saja menarik tapi juga substantif dalam membantu proses pemahaman bahasa Jepang pembaca secara umum.\r\nBuku kamus ini memuat kosakata pilihan yang benar-benar relatif dibutuhkan oleh pembelajar pemula hingga cocok untuk pembelajar menengah. Dan yang membuatnya lebih spesial lagi adalah bahwa kamus ini tetap bisa digunakan untuk level ahli yang mana di dalam kamus terdapat kosakata khusus. Setiap kosakata Jepang juga dilengkapi dengan tulisan kanji (Hiragana dan Katakana) yang akan membantu dalam mempelajari tulisan kanji tersebut. Terdapat banyak bonus yang akan didapatkan pula, seperti E-Book Hiragana dan Katakana, E-Book 11 paket percakapan sehari-hari, dan E-Book 33 salam popular.\r\nBanyak keunggulan lainnya yang ditawarkan oleh buku kamus ini untuk memudahkan pembacanya dalam mempelajari bahasa Jepang. Hal lain yang menjadikan buku kamus ini menjadi pilihan yang tepat bahwa selalu up to date terhadap perubahan ataupun penambahan kosakata sehingga akan sangat membantu. Kamus ini dapat digunakan oleh semua kalangan yang berkeinginan untuk belajar atau memperdalam bahasa Jepang.', '20241119021420.jpg', 'Kamus-Lengkap-Bahasa-Jepang', '6', '2024-11-19', 'Admin'),
(50, 'Smart Master Kamus Poket Korea-Indonesia Indonesia-Korea', 'Buku Smart Master Kamus Poket Korea-Indonesia Indonesia-Korea karya Ayu Christy dan Tim Hiputindo ini dapat sangat membantu bagi para pembaca yang sedang mempelajari bahasa Korea - Indonesia. Di dalamnya buku ini dilengkapi dengan cara baca hangeul, E-Tata Bahasa Korea, E-Idiom-Peribahasa, E-Very Firts Korean Words dengan Big Bang Bonuses yaitu sebuah e-book senilai lima ratus ribu rupiah dengan scan barcode yang tertera pada buku ini. Ayo kembangkan kemampuan bahasa Korea-Indonesia dengan kamus ini.\r\n\r\nSinopsis\r\nKamus Korea - Indonesia ini disusun secara lengkap dan praktis. Disertai cara baca dan kelompok hurufnya, menjadikan kamus ini mudah digunakan bagi pelajar, mahasiswa, atau umum. Buku ini membahas tentang cara baca dan tata bahasa Korea, kosakata, sehingga dapat dijadikan media memperdalam pemahaman tetang bahasa Korea.\r\n\r\nSelain itu, buku ini juga dilengkapi dengan cara baca Hangeul (baik vokal dan konsonan), cara menyusun kalimat, pengetahuan tingkat bahasa (sopan, formal, dan informal), angka asli korea, dan tenses atau bentuk waktu. Semoga buku ini menjadi salah saru referensi yang berguna bagi para pembaca yang sedang mempelajari atau memperdalam bahasa Korea.', '20241119021532.jpg', 'Smart-Master-Kamus-Poket-Korea-Indonesia-Indonesia-Korea', '6', '2024-11-19', 'Admin'),
(51, 'Kamus Bahasa Arab Lengkap dan Akurat', 'Kamus merupakan referensi yang wajib dimiliki siapa saja yang sedang belajar bahasa. Dengan menggunakan kamus, kita bisa mengetahui padanan (persamaan) kata asing dalam bahasa. Hal ini tentunya akan memudahkan kita dalam memahami bahasa tersebut. Kamus ini kami susun berdasarkan kebutuhan pelajar akan sebuah kamus yang dapat dibawa ke mana pun yang memiliki perbendaharaan kata yang pas dengan kebutuhan dan lengkap dengan cara pelafalannya (transliterasi) yang didasarkan pada intensitas penggunaan kata tersebut oleh pembelajar. Untuk membuat kamus ini menjadi kamus yang lengkap, kamus ini dilengkapi dengan cara penggunaan kamus, Idiom Bahasa Arab, Peribahasa Bahasa Arab, Kosakata Tematik, dan juga Bonus percakapan bahasa Arab sehari-hari yang akan mempermudah Anda dalam belajar bahasa arab. \"Kamus populer bahasa Arab” ini juga disusun dengan metode penggunaan yang mudah dipahami. Dengan begitu, kamus ini diharapkan dapat memberi kemudahan bagi mereka yang ingin mempelajari dan memahami bahasa Arab secara mendalam. Semoga kamus ini bermanfaat bagi masyarakat dan semoga diberkahi oleh Allah SWT. Berikut petunjuk penggunaan kamus dalam pencarian kata dalam Bahasa Arab:\r\nJika semua hurufnya terdiri dari huruf asli, maka hendaknya dicari berdasarkan permulaan dan urutan huruf-hurufnya.\r\nSedang apabila antara huruf-hurufnya terdapat huruf zaid (tambahan) maka lebih dahulu diketahui mana huruf yang asli dan mana yang tambahan.', '20241119021745.jpg', 'Kamus-Bahasa-Arab-Lengkap-dan-Akurat', '6', '2024-11-19', 'Admin'),
(52, 'Kamus Bahasa Jerman: Excellent Dictionary', 'Kamu ingin belajar Bahasa Jerman? Tapi, kesulitan dalam menguasai kosakatanya? Saat ini, sudah ada Buku Kamus Bahasa Jerman: Excellent Dictionary yang dapat membantumu meningkatkan kemampuan berbahasa Jerman. Buku ini disusun lengkap secara alfabetis, terstruktur, dan praktis digunakan. Kamus ini memuat kosa kata update dan terlengkap. Terdapat juga tulisan fonetis untuk mengetahui cara membaca kata yang bersangkutan dan mendampingi setiap entri. Selain itu juga terdapat ungkapan dalam Bahasa Jerman. Buku ini didesain untuk pelajar, mahasiswa, dan umum yang sedang belajar Bahasa Jerman. Materi buku ini juga bisa didownload di appstore android dengan melakukan scan terhadap kode QR yang terdapat di sampul buku. Ukuran buku ini praktis sehingga akan mudah dibawa kemana pun pergi.\r\n\r\nSinopsis Buku\r\n\r\nBahasa Jerman memiliki ribuan kosakata dengan banyak arti. Kamus ini disusun dengan puluhan ribu entri atau kata kepala diikuti tulisan fonetis yang mendampingi setiap entri untuk mengetahui cara membaca kata yang bersangkutan, penjelasan kelas kata, tambahan penjelasan arti kata yang bersangkutan dalam disiplin ilmu tertentu, serta contoh pemakaian kata dalam kalimat yang sungguh memadai untuk mempermudah pemahaman. Kamus ini disusun secara komprehensif dan menyesuaikan dengan perkembangan kosa kata bahasa Jerman.\r\n\r\nKamus bahasa Jerman ini merupakan upaya kami untuk membantu pelajar, mahasiswa, dan kalangan umum pembaca, semakin mudah dalam menerjemahkan setiap kosakata dalam bahasa Jerman. Disusun secara alpabetis dan mencakup kosakata pilihan dan populer dalam bahasa Jerman. Selain itu, penyusunan kamus ini tentu dapat membantu dan menambah wawasan pembaca dalam berpikir, berekspresi, dan berkomunikasi dalam segala bidang. Akhirnya, semoga kamus ini bisa membantu pembaca untuk mempermudah proses belajar bahasa Jerman.', '20241119021859.jpg', 'Kamus-Bahasa-Jerman:-Excellent-Dictionary', '6', '2024-11-19', 'Admin'),
(53, 'Kitab Desain Grafis dengan CorelDraw 2019', 'CorelDraw merupakan software wajib yang harus dikuasai oleh setiap desainer grafis yang bekerja di Indonesia. CorelDRAW adalah aplikasi desain grafis 2D digital yang berbasis vektor. Objek yang dihasilkan berupa kombinasi beberapa garis, baik berupa garis lurus maupun lengkung. CorelDRAW adalah suatu program yang dapat digunakan untuk membuat aplikasi gambar dan teks secara cepat dan mudah. CorelDRAW memiliki fitur setting dan layout untuk bermacam-macam produk. Dengan aplikasi ini, kalian bisa membuat desain logo, flex, brosur, kartu undangan, dan berbagai desain dokumen lainnya dengan mudah.\r\n\r\nAplikasi ini pun memiliki beberapa keunggulan dibandingkan aplikasi desain lainnya. Dukungan offset printing dan digital printing terhadap CorelDraw sangat besar sehingga jika Anda membawa file hasil desain yang dibuat menggunakan CorelDraw maka proses produksi akan lancar.\r\n\r\nBagaimana memulai proses belajar CorelDraw? Dari buku ini, karena bahasan yang tercakup telah meliputi versi terakhir, yaitu CorelDraw 2019. Dengan demikian, Anda bisa menggunakan CorelDraw dengan tampilan, fitur, dan perintah terbaru yang lebih praktis, lengkap, dan mudah digunakan.\r\n\r\nBuku berjudul Kitab Desain Grafis dengan CorelDraw 2019 ini mengupas CorelDraw dengan sangat praktis. Setiap perintah, menu, dan tool dibahas secara singkat, tepat, dan jelas. Harapannya, Anda mengetahui bagaimana memanfaatkan CorelDraw untuk membuat aneka rupa desain seperti simbol, maskot, logo, ragam teks, dan lain sebagainya. Akhir kata, semoga Anda bisa menjadi desainer unggulan setelah membaca buku ini.\r\n', '20241119022117.jpg', 'Kitab-Desain-Grafis-dengan-CorelDraw-2019', '7', '2024-11-19', 'Admin'),
(54, 'Panduan Lengkap SPSS 26', 'Buku Panduan Lengkap SPSS 26 karya Singgih Santoso ini adalah buku tentang software statistik yang berisi panduan untuk memanfaatkan software tersebut. Agar pembaca mendapat manfaat maksimal dari buku ini, pembahasan justru diawali dengan hal-hal yang tidak langsung berkaitan dengan analisis data statistik dengan SPSS namun relevan dengan bagian yang lain. Materi buku ini diawali dengan pengantar tentang ilmu statistik, yang dilanjutkan dengan peran teknologi informasi yang makin penting dalam pemrosesan data statistik titik kemudian, pembahasan beralih ke hal yang tidak kalah penting dalam pengolahan data dengan SPSS, yaitu memahami menu-menu dasar pada SPSS yang berfungsi untuk menyiapkan data untuk diolah dengan metode statistik tertentu titik dengan menguasai materi-materi pada bagian pertama ini pembaca dapat menyiapkan data mentah di lapangan menjadi data yang siap untuk diproses lebih jauh.\r\n\r\nSinopsis Buku\r\n\r\nSaat ini, SPSS telah mengukuhkan diri sebagai software statistik paling populer di Indonesia. Dengan fasilitas metode statistik yang sangat lengkap, kemampuan membuat grafik-grafik statistik yang sophisticated, penggunaan yang user friendly, serta kompatibilitas dengan software populer seperti Microfot Office, SPSS dapat digunakan oleh orang yang awam tentang statistik dan komputer sekalipun! Untuk memudahkan pemahaman materi, pada setiap topik disertai contoh kasus; mulai dari cara memasukkan data statistik ke dalam SPSS 26, cara SPSS 26 mengolah dengan prosedur statistik tertentu, dan cara menafsir hasil output SPSS 26. Agar dapat dipahami dengan sistematis, materi dibagi menjadi tiga bagian besar: • Bagian 1: menjelaskan persiapan data statistik sebelum diproses dengan SPSS 26. • Bagian 2: menjelaskan penggunaan SPSS 26 untuk mengolah data dengan berbagai prosedur statistik. • Bagian 3: bagian ini bersifat pelengkap dua bagian di atas, berisi tip dan trik praktis dalam menggunakan SPSS 26. Buku ini ditujukan kepada para pengguna statistik yang tidak ingin direpotkan dengan perhitungan manual statistik yang melelahkan, namun tetap ingin memperoleh output statistik yang akurat dan dapat dimengerti. Para mahasiswa, peneliti, pengusaha dan pengguna awam yang terlibat dalam pengolahan data statistik merupakan kalangan yang tepat untuk memiliki dan menggunakan buku ini. BAGIAN 1: • Pengembangan ilmu statistik di era informasi • Cara memasukkan data secara benar dan efisien ke dalam SPSS • Editing data yang sudah terinput, checking duplikasi data, validasi data • Transformasi data pada kondisi tertentu BAGIAN 2: • Pembuatan berbagai grafik statistik • Memberi variasi pada sebuah grafik • Disain tabel statistik, termasuk Multiple Response Tables • Statistik Deskriptif, Box-Plot, Steam, and Leaf dan uji Distribusi Normal • Uji t dan ANOVA, termasuk ANOVA Contrast dan Repeated Measures • Penggunaan Crosstab dan uji Chi-Square • Korelasi Bivariat dan Parsial, termasuk korelasi Pearson, Spearman, dan lainnya • Regresi Sederhana dan Berganda, termasuk berbagai uji seperti analisis residual, uji autokorelasi dan lainnya, serta Regresi Berjenjang • Fasilitas regresi Automatic Linear Modelling • Statistik Nonparametrik, seperti uji Binomial, Runs, Kruskal Wallis, Friedman, Wilcoxon, Kolmogorov-Smirnov dan lainnya BAGIAN 3: • Transfer Data, Tabel dan Grafik SPSS ke Microsoft Office • Kiat Memilih Metode Statistik', '20241119022449.jpg', 'Panduan-Lengkap-SPSS-26', '7', '2024-11-19', 'Admin'),
(55, 'Pemrograman C Revisi Kedua: Mudah dan Cepat Menjadi Master C', 'Buku Pemrograman C++ Revisi Kedua: Mudah dan Cepat Menjadi Master C++ ini merupakan buku yang berisi panduan untuk mempelajari bahasa pemrograman C++ secara mudah dan cepat, yang membahas tentang elemen-elemen penting yang perlu dipahami oleh para pembaca dalam pembuatan program menggunakan C++. Pembahasan disajikan dengan bahasa yang komunikatif dan juga gaya tutorial sehingga memudahkan para pembaca yang sedang mempelajari bahasa C++ untuk dipraktekkan dan dipahami konsepnya.\r\n\r\nC++ sendiri merupakan sebuah bahasa pemrograman multifungsi yang sudah terbukti banyak digunakan oleh para profesional untuk mengembangkan software di berbagai bidang. Adobe Photoshop, Mozilla FireFox, Google Chromium, MySQL Server adalah beberapa contoh software yang ditulis menggunakan C++, meskipun di beberapa bagian tertentu masih ditulis dengan menggunakan bahasa C. C++ juga akan banyak digunakan untuk berbagai keperluan akses perangkat keras, kemudian pemrograman yang berkaitan dengan sistem operasi, pengembangan sistem tertanam (embedded system), pembuatan driver, dynamic linked library (*.dll) atau shared object (*.so), dan sebagainya. Buku ini sangat cocok bagi Anda yang ingin mempelajari C++ atau Anda yang ingin memperdalam pemahaman Anda untuk belajar C++.', '20241119022728.jpg', 'Pemrograman-C-Revisi-Kedua:-Mudah-dan-Cepat-Menjadi-Master-C', '7', '2024-11-19', 'Admin'),
(56, 'Baking At Home 50 Resep Simpel & Anti Gagal Ala Luvita Ho', 'Apakah Anda sedang jenuh dengan kegiatan yang itu - itu saja? Yuk, coba kegiatan baru! Salah satu kegiatan baru yang menyenangkan adalah baking. Proses pembuatan kue tentu berbeda dengan memasak pada umumnya, selain dari takaran bahan-bahan yang pasti, proses pembuatan kue cenderung lebih panjang. Selain menambah keterampilan dan pengalaman memasak, belajar baking juga bisa menjadi peluang usaha yang menjanjikan. Namun, terkadang beberapa dari Anda di rumah sering mengandalkan video tutorial saja untuk membuat roti atau kue. Sehingga kemungkinan hasil gagal di setiap membuat kue/roti menjadi besar. Inilah saatnya Anda membeli buku Buku Baking at Home-50 Resep Simpel & Anti gagal ala Luvita Ho.\r\n\r\nLuvita Ho merupakan salah satu perempuan yang pernah menghiasi layar televisi saat mengikuti kompetisi memasak. Saat ini, ia aktif memberikan edukasi tentang dunia baking melalui YouTube hingga TikTok dengan macam-macam hidangan simpel.\r\n\r\nBuku Baking at Home-50 Resep Simpel & Anti gagal ala Luvita Ho ini berisi resep andalannya yang terbagi atas 4 kategori yaitu: Roti Pastry & Choux, Cookies, Bolu & Cake, Dessert/No Bake, serta Pelengkap. Ada 50 resep favorit dan kekinian yang selalu dicari penikmat pastry seperti Garlic Twist Bread, Double Chocolate Bomboloni, Chocolate Choux au Craquelin, Almond Tart, Lidah Kucing Cokelat, Nanas Thumbprint, Bolu Ketan Pandan Keju, Cookies & Cream Ogura, Apple Crumble Muffin, Tres Leches Cake, Mini Baked Cheese Cake, Chocolate Panna Cotta, No Baked Coffee Cheesecake, dan lainnya. Seperti Luvita Ho, ayo buktikan passion Anda dengan mempraktikkan resep simpel dan anti gagal di buku ini.', '20241119022929.jpg', 'Baking-At-Home-50-Resep-Simpel-&-Anti-Gagal-Ala-Luvita-Ho', '7', '2024-11-19', 'Admin'),
(57, 'Teknik Mengemudi Mobil Hemat Bahan Bakar', 'Mobil adalah barang investasi, dan juga untuk sarana kerja, belanja, dan mungkin bepergian jauh. Oleh sebab itu perlu rasanya memperlakuan dengan hati-hati dan sayang kepada mobil menjadi keharusan. Karena dengan selalu memperlakukan mobil secara baik akan menghemat biaya perbaikan dan ongkos perawatan.\r\n\r\nTerkadang dalam mempunyai mobil, kita selalu menanyakan angka konsumsi bahan bakar yang dimiliki oleh mobil tersebut. Padahal kemampuan untuk irit bahan bakar tidak melulu bergantung kepada mesin atau performa dari mobil. Faktor yang paling berpengaruh adalah seberapa pintar kaki kita menginjak gas. Seiring perkembangan zaman, mengemudi irit bahan bakar semakin mudah karena biasanya pabrikan mencantumkan indikator ECO di spidometer. Apabila perilaku dalam menginjak pedal gas sudah termasuk menyetir yang ekonomis, maka indikator tersebut akan muncul di spidometer. Sehingga kita menjadi lebih tahu cara bagaimana menyetir yang efisien dan irit konsumsi bahan bakar. Namun bagi pemilik mobil yang belum ada indikator ECO tidak usah bersedih. Karena menyetir dengan irit bahan bakar adalah hal yang mudah untuk dilakukan. Kuncinya adalah menjaga putaran mesin dengan baik dan benar.\r\n\r\nHal yang paling dasar dalam menyetir irit bahan bakar adalah kurangi frekuensi menginjak pedal gas. Pedal gas yang terlalu sering diinjak dalam-dalam akan membuat pasokan udara semakin banyak. Udara ini akan diimbangi oleh pasokan bensin juga sehingga konsumsi bensin menjadi lebih boros. Sebaiknya injak pedal gas secukupnya saja', '20241119023048.jpg', 'Teknik-Mengemudi-Mobil-Hemat-Bahan-Bakar', '7', '2024-11-19', 'Admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `level` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(11, 'Admin', 'Admin', 'e3afed0047b08059d0fada10f400c1e5', 'Admin'),
(12, 'Arjun', 'Arjun', '77bec3886fb88366cf4118eac979c640', 'Admin'),
(13, 'Kumoro', 'Kumoro', 'e41f21b1bf4edcff73c72c3d79021ac1', 'Kontributor'),
(15, 'Permadi', 'Permadi', 'b69d343badb19f8e0311aa62b844a06c', 'Kontributor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`id_carousel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `carousel`
--
ALTER TABLE `carousel`
  MODIFY `id_carousel` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
