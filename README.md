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

• Membuat program Flutter dengan tema E-Commerce

Saya membuat aplikasi Flutter baru dengan judul "Toko Sepatu Muslim" menggunakan widget MaterialApp sebagai root widget aplikasi. Tema dasar aplikasi ini ditentukan dengan ThemeData, yang memungkinkan kustomisasi warna dan elemen visual lainnya. Tema ini menggunakan skema warna berbasis seedColor untuk menciptakan tampilan khas dan konsisten.

• Membuat tiga tombol dengan ikon dan teks

Di dalam widget Homepage, saya menambahkan tiga tombol menggunakan ElevatedButton.icon.
Masing-masing tombol memiliki ikon dan label teks sesuai checklist:
Tombol pertama menggunakan ikon Icons.list dengan label "Lihat Daftar Produk".
Tombol kedua menggunakan ikon Icons.add dengan label "Tambah Produk".
Tombol ketiga menggunakan ikon Icons.logout dengan label "Logout".

• Mengimplementasikan warna-warna yang berbeda untuk setiap tombol

Saya menetapkan warna latar belakang berbeda untuk setiap tombol menggunakan ElevatedButton.styleFrom:

Lihat Daftar Produk: Warna kuning (Color.fromARGB(255, 255, 183, 0)).
Tambah Produk: Warna hijau (Color.fromARGB(255, 0, 255, 42)).
Logout: Warna merah (Color.fromARGB(255, 255, 0, 0)).

• Memunculkan Snackbar dengan pesan khusus untuk setiap tombol
Saya membuat metode _showSnackBar di dalam kelas _HomepageState untuk menampilkan SnackBar dengan pesan yang sesuai ketika tombol ditekan. Ketika tombol ditekan, onPressed akan memanggil _showSnackBar() dengan pesan tertentu:

Lihat Daftar Produk: Menampilkan SnackBar dengan pesan "Anda telah berhasil menekan tombol Lihat Daftar Produk".
Tambah Produk: Menampilkan SnackBar dengan pesan "Anda telah berhasil menekan tombol Tambah Produk".
Logout: Menampilkan SnackBar dengan pesan "Anda telah berhasil menekan tombol Logout".






