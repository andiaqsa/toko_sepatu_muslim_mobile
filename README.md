# toko_sepatu_muslim

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




Nama: Andi Aqsa Mappatunru Marzuki
Kelas: PBP D
NPM: 2306275046
                                        Tugas 7

1). Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah komponen yang menjelaskan bagian dari antarmuka pengguna yang hanya dapat ditentukan oleh konfigurasi dalam konstruktor. Widget Stateless bersifat statis. Widget ini tidak menyimpan status yang dapat diubah. Contoh widget Stateless adalah Ikon, Tombol Ikon, dan Teks.

Stateful Widget adalah widget yang dapat mengubah statusnya seiring waktu. Widget Stateful bersifat dinamis. Perubahan tersebut dapat berupa interaksi pengguna atau pembaruan data secara real-time. Widget stateful mencakup kotak centang, tombol radio, slider, input formulir, dll. 

Perbedaan dari keduanya:
Stateless Widget: bersifat statis, tidak menyimpan status yang dapat diubah.

Stateful Widget: bersifat dinamis, dapat mengubah statusnya seiring waktu, Perubahan dapat berupa interaksi pengguna atau pembaruan data secara real-time.


2). Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya

Widget yang saya gunakan pada proyek ini berdasarkan fungsinya:

• MaterialApp: Digunakan sebagai widget root aplikasi, menyediakan beberapa pengaturan global seperti tema, judul, dan pengaturan debug.
• ThemeData: Mengatur tampilan tema untuk aplikasi, termasuk warna skema, tema AppBar, dan pilihan Material Design.
• AppBar: Menampilkan bar di bagian atas halaman, yang dapat menampilkan judul, ikon, dan menu.
• Scaffold: Menyediakan struktur dasar halaman dengan AppBar, body, dan elemen lain yang umum dalam desain aplikasi.
• Center: Memusatkan widget dalam kontainer induknya, di sini digunakan untuk memusatkan kolom di halaman.
• Column: Menyusun widget secara vertikal.
• ElevatedButton.icon: Menampilkan tombol yang memiliki ikon dan label teks. Terdapat tiga tombol yang masing-masing memiliki ikon dan label yang berbeda, serta fungsi onPressed.
• SizedBox: Memberikan spasi antara widget, digunakan untuk memberi jarak antar tombol di kolom.
• SnackBar: Widget pop-up yang menampilkan pesan sementara kepada pengguna. Digunakan untuk memberi notifikasi ketika tombol ditekan.
• ScaffoldMessenger: Mengelola dan menampilkan SnackBar pada widget Scaffold.


3). Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut

Fungsi setState() dalam Flutter digunakan untuk memberi tahu framework bahwa ada perubahan pada bagian dari widget yang membutuhkan pembaruan tampilan. Ketika setState() dipanggil, Flutter akan memicu proses rebuild untuk widget yang dipengaruhi oleh perubahan data tersebut, sehingga UI dapat mencerminkan perubahan terbaru.

Variabel yang dapat terdampak dengan fungsi ini:

• Variabel counter pada aplikasi counter sederhana, dimana nilai counter akan berubah setiap kali tombol ditekan.
• List item dalam aplikasi To-Do yang memengaruhi tampilan daftar tugas ketika ada penambahan, pengeditan, atau penghapusan item.
• Status tampilan seperti tema (dark mode/light mode), status login, atau elemen dinamis lain yang berubah saat interaksi pengguna.

4). Jelaskan perbedaan antara const dengan final

Perbedaan antara const dengan final:
const digunakan untuk mendefinisikan nilai konstan yang akan diinisialisasi pada waktu kompilasi. Nilai yang ditetapkan sebagai const bersifat tetap dan tidak dapat diubah setelah inisialisasi. Digunakan pada widget atau variabel yang pasti nilainya dan dapat diketahui sebelum runtime.

final digunakan untuk mendefinisikan nilai yang tetap setelah diinisialisasi tetapi nilainya ditentukan pada runtime. Artinya, variabel final dapat menerima nilai yang tidak diketahui sampai aplikasi dijalankan, tetapi setelah diinisialisasi nilainya tidak dapat diubah lagi.

5). Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas

Berikut adalah cara saya mengimplementasikan Checklist-checklist diatas:


```dart
import 'package:flutter/material.dart'; // Mengimpor paket material untuk menggunakan widget Material Design
```
Mengimpor pustaka `material.dart` dari Flutter, yang menyediakan widget dan tema bawaan untuk Material Design.

```dart
void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp
}
```
Fungsi `main` sebagai titik awal aplikasi, menjalankan aplikasi dengan widget `MyApp`.

```dart
class MyApp extends StatelessWidget { // Mendefinisikan kelas MyApp sebagai StatelessWidget
  const MyApp({super.key}); // Konstruktor untuk MyApp, menggunakan key
```
Mendefinisikan kelas `MyApp` sebagai `StatelessWidget`, karena UI yang dibuat bersifat statis dan tidak berubah.

```dart
  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI MyApp
    return MaterialApp( // Menggunakan MaterialApp sebagai root widget
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: "Toko Sepatu Muslim", // Menetapkan judul aplikasi
```
Metode `build` digunakan untuk membuat UI aplikasi. Menggunakan `MaterialApp` sebagai root widget dan menetapkan beberapa pengaturan, termasuk menonaktifkan banner debug dan menetapkan judul aplikasi.

```dart
      theme: ThemeData( // Menetapkan tema aplikasi
        colorScheme: ColorScheme.fromSeed( // Membuat skema warna berdasarkan seed color
          seedColor: const Color.fromARGB(255, 0, 0, 0), // Warna seed adalah hitam
        ),
        useMaterial3: true, // Menggunakan Material 3
        appBarTheme: const AppBarTheme( // Menetapkan tema untuk AppBar
          titleTextStyle: TextStyle( // Menetapkan gaya teks untuk judul AppBar
            color: Colors.white, // Warna teks putih
            fontSize: 24, // Ukuran font 24
            fontWeight: FontWeight.bold, // Menebalkan teks
            fontFamily: 'Poppins', // Menggunakan font Poppins
          ),
          centerTitle: true, // Memusatkan judul di AppBar
        ),
      ),
```
Menetapkan `ThemeData` untuk mengatur tema aplikasi. `colorScheme` dibuat dari warna seed, `useMaterial3` diaktifkan untuk menggunakan Material Design 3, dan gaya `AppBar` disesuaikan dengan warna, ukuran, dan jenis font.

```dart
      home: const Homepage(title: "Toko Sepatu Muslim"), // Menetapkan homepage sebagai widget Homepage
    );
  }
}
```
Menetapkan `Homepage` sebagai halaman utama (`home`) aplikasi dan memberikan judul "Toko Sepatu Muslim".

```dart
class Homepage extends StatefulWidget { // Mendefinisikan kelas Homepage sebagai StatefulWidget
  const Homepage({super.key, required this.title}); // Konstruktor dengan judul yang diperlukan

  final String title; // Variabel untuk menyimpan judul
```
Mendefinisikan `Homepage` sebagai `StatefulWidget`, yang memungkinkan UI diperbarui ketika ada perubahan data. Menetapkan variabel `title` yang akan digunakan sebagai judul halaman.

```dart
  @override
  State<Homepage> createState() => _HomepageState(); // Membuat state untuk Homepage
}
```
Mendefinisikan kelas state `_HomepageState` untuk widget `Homepage`.

```dart
class _HomepageState extends State<Homepage> { // Mendefinisikan kelas state untuk Homepage
  // Fungsi untuk menampilkan snackbar
  void _showSnackBar(String message) { // Metode untuk menunjukkan snackbar dengan pesan
    final snackBar = SnackBar( // Membuat snackbar dengan konten
      content: Text(message), // Menetapkan konten snackbar
      duration: const Duration(seconds: 3), // Durasi snackbar selama 3 detik
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // Menampilkan snackbar menggunakan ScaffoldMessenger
  }
```
Mendefinisikan fungsi `_showSnackBar` untuk menampilkan `SnackBar` dengan pesan tertentu. `SnackBar` akan tampil selama 3 detik.

```dart
  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI Homepage
    return Scaffold( // Menggunakan Scaffold sebagai kerangka untuk halaman
      appBar: AppBar( // Membuat AppBar
        backgroundColor: const Color.fromARGB(255, 9, 161, 164), // Warna latar belakang AppBar
        title: Text(widget.title), // Menetapkan judul AppBar dari widget.title
      ),
```
Metode `build` di `_HomepageState` membangun UI halaman `Homepage` dengan struktur `Scaffold`, termasuk `AppBar` dengan latar belakang berwarna hijau laut dan judul dari `widget.title`.

```dart
      body: Center( // Memusatkan konten di dalam tubuh halaman
        child: Column( // Menggunakan Column untuk menyusun tombol secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun anak-anak di tengah kolom
          children: <Widget>[ // Daftar widget anak
```
`body` halaman menggunakan `Center` untuk memusatkan konten, dan `Column` untuk menyusun widget secara vertikal dengan anak-anak di tengah.

```dart
            ElevatedButton.icon( // Membuat tombol dengan ikon
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Lihat Daftar Produk"
                _showSnackBar('Anda telah berhasil menekan tombol Lihat Daftar Produk'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.list), // Menetapkan ikon untuk tombol
              label: const Text('Lihat Daftar Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 255, 183, 0), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
```
Membuat tombol pertama dengan ikon `Icons.list` dan teks "Lihat Daftar Produk". Ketika tombol ditekan, `SnackBar` akan muncul dengan pesan tertentu. Gaya tombol disesuaikan dengan warna latar belakang kuning dan ukuran minimum.

```dart
            const SizedBox(height: 16.0), // Spasi antara tombol
```
Menyisipkan `SizedBox` dengan tinggi 16 piksel sebagai spasi antara tombol.

```dart
            ElevatedButton.icon( // Tombol kedua
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Tambah Produk"
                _showSnackBar('Anda telah berhasil menekan tombol Tambah Produk'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.add), // Menetapkan ikon untuk tombol
              label: const Text('Tambah Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 0, 255, 42), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
```
Membuat tombol kedua dengan ikon `Icons.add` dan teks "Tambah Produk". Ketika ditekan, `SnackBar` muncul dengan pesan "Tambah Produk". Warna tombol hijau dan ukuran minimum ditetapkan.

```dart
            const SizedBox(height: 16.0), // Spasi antara tombol
```
Spasi antar tombol kedua dan ketiga.

```dart
            ElevatedButton.icon( // Tombol ketiga
              onPressed: () { // Ketika tombol ditekan
                // Snackbar untuk tombol "Logout"
                _showSnackBar('Anda telah berhasil menekan tombol Logout'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.logout), // Menetapkan ikon untuk tombol
              label: const Text('Logout'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 255, 0, 0), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```
Membuat tombol ketiga dengan ikon `Icons.logout` dan teks "Logout". `SnackBar` muncul dengan pesan "Logout" saat tombol ditekan. Warna tombol merah dan ukuran minimum ditetapkan.

Kode ini untuk melengkapi UI aplikasi e-commerce dengan tiga tombol dan `SnackBar` interaktif untuk setiap tombol yang saya buat.



Nama: Andi Aqsa Mappatunru Marzuki
Kelas: PBP D
NPM: 2306275046
                                        Tugas 8

1). Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan? 

• Kegunaan const di Flutter: const digunakan untuk mendefinisikan widget atau nilai yang bersifat tetap dan tidak berubah selama runtime aplikasi.
• Keuntungan menggunakan const adalah:
Mengurangi konsumsi memori karena objek const hanya dibuat satu kali di memori dan digunakan kembali.
Meningkatkan performa aplikasi karena const memberitahu Flutter untuk tidak perlu membangun ulang widget yang bersifat konstan.
• Sebaiknya kita menggunakan const pada widget atau variabel yang nilai atau tampilannya tidak akan berubah selama runtime aplikasi.
• Sebaiknya kita tidak menggunakan const pada data yang mungkin berubah, karena ini akan membuat widget tersebut tidak dapat diperbarui.

2). Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini! 

Perbandingan penggunaan Column dan Row di Flutter:

• Column digunakan untuk menata widget secara vertikal (top-down).
• Row digunakan untuk menata widget secara horizontal (left-right).
Keduanya menerima properti seperti mainAxisAlignment dan crossAxisAlignment untuk mengatur tata letak, tetapi arah utamanya berbeda (Column vertikal, Row horizontal).

contoh implementasi dari masing-masing layout widget:
• Column:
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text('Widget 1'),
    Text('Widget 2'),
    Text('Widget 3'),
  ],
)

• Row:
Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.settings),
  ],
)


3). Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan! 

Elemen input yang saya gunakan pada halaman form di tugas ini:
• TextFormField untuk memasukkan name, amount, dan description.
• ElevatedButton untuk menyimpan item yang dimasukkan dalam form.

Elemen input lain yang tidak digunakan pada tugas ini:

Checkbox atau CheckboxListTile: untuk input pilihan ya atau tidak.
Radio atau RadioListTile: untuk memilih satu opsi dari beberapa pilihan.
Switch: untuk mengaktifkan atau menonaktifkan opsi.
Slider: untuk memilih nilai dalam rentang tertentu.


4). Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Saya Mengatur Tema menggunakan ThemeData di dalam MaterialApp, di mana saya dapat mendefinisikan skema warna (colorScheme), appBarTheme, fontFamily, dan sebagainya. Dalam kode saya, tema sudah diimplementasikan dengan:

• Skema warna berbasis seedColor dan appBarTheme.
• Menggunakan warna dan font Poppins pada AppBar.
Hal ini membuat aplikasi saya menjadi konsisten dalam penggunaan warna dan gaya teks di setiap halaman.


5). Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter? 

Cara saya menangani navigasi dalam aplikasi dgn banyak halaman pada flutter adalah dengan menggunakan Navigator dengan metode push dan pop. Saya membuat navigasi dengan Navigator.push untuk membuka halaman baru (AddItemPage) dan Navigator.pop untuk kembali ke halaman sebelumnya.






