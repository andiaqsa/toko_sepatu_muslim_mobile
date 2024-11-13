import 'package:flutter/material.dart'; 

void main() {
  runApp(const MyApp()); // Menjalankan aplikasi dengan widget MyApp sebagai root
}

class MyApp extends StatelessWidget { // Mendefinisikan kelas MyApp sebagai StatelessWidget
  const MyApp({super.key}); // Konstruktor untuk MyApp, menggunakan key

  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI MyApp
    return MaterialApp( // Menggunakan MaterialApp sebagai root widget
      debugShowCheckedModeBanner: false, // Menyembunyikan banner debug
      title: "Toko Sepatu Muslim", // Menetapkan judul aplikasi
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
      home: const Homepage(title: "Toko Sepatu Muslim"), // Menetapkan homepage sebagai widget Homepage
    );
  }
}

class Homepage extends StatefulWidget { // Mendefinisikan kelas Homepage sebagai StatefulWidget
  const Homepage({super.key, required this.title}); // Konstruktor dengan judul yang diperlukan
  final String title; // Variabel untuk menyimpan judul

  @override
  State<Homepage> createState() => _HomepageState(); // Membuat state untuk Homepage
}

class _HomepageState extends State<Homepage> { // Mendefinisikan kelas state untuk Homepage
  void _showSnackBar(String message) { // Fungsi untuk menampilkan snackbar dengan pesan
    final snackBar = SnackBar( // Membuat snackbar dengan konten
      content: Text(message), // Menetapkan konten snackbar
      duration: const Duration(seconds: 3), // Durasi snackbar selama 3 detik
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar); // Menampilkan snackbar menggunakan ScaffoldMessenger
  }

  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI Homepage
    return Scaffold( // Menggunakan Scaffold sebagai kerangka untuk halaman
      appBar: AppBar( // Membuat AppBar
        backgroundColor: const Color.fromARGB(255, 9, 161, 164), // Warna latar belakang AppBar
        title: Text(widget.title), // Menetapkan judul AppBar dari widget.title
      ),
      drawer: Drawer( // Membuat Drawer untuk navigasi
        child: ListView( // Menggunakan ListView untuk daftar opsi di dalam drawer
          padding: EdgeInsets.zero, // Menghilangkan padding
          children: <Widget>[
            const DrawerHeader( // Header untuk drawer
              decoration: BoxDecoration( // Dekorasi untuk header drawer
                color: Colors.blue, // Warna latar belakang biru
              ),
              child: Text( // Teks header drawer
                'Menu', // Isi teks header
                style: TextStyle(color: Colors.white, fontSize: 24), // Gaya teks header
              ),
            ),
            ListTile( // Opsi pertama di drawer
              leading: const Icon(Icons.home), // Ikon untuk opsi Halaman Utama
              title: const Text('Halaman Utama'), // Teks untuk opsi Halaman Utama
              onTap: () { // Aksi ketika opsi ditekan
                Navigator.pop(context); // Menutup drawer
                Navigator.push( // Navigasi ke halaman utama
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Homepage(title: "Toko Sepatu Muslim"), // Membuat instance Homepage
                  ),
                );
              },
            ),
            ListTile( // Opsi kedua di drawer
              leading: const Icon(Icons.add), // Ikon untuk opsi Tambah Item
              title: const Text('Tambah Item'), // Teks untuk opsi Tambah Item
              onTap: () { // Aksi ketika opsi ditekan
                Navigator.pop(context); // Menutup drawer
                Navigator.push( // Navigasi ke halaman Tambah Item
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddItemPage(), // Membuat instance AddItemPage
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center( // Memusatkan konten di dalam tubuh halaman
        child: Column( // Menggunakan Column untuk menyusun tombol secara vertikal
          mainAxisAlignment: MainAxisAlignment.center, // Menyusun anak-anak di tengah kolom
          children: <Widget>[
            ElevatedButton.icon( // Membuat tombol dengan ikon
              onPressed: () {
                _showSnackBar('Anda telah berhasil menekan tombol Lihat Daftar Produk'); // Menampilkan snackbar
              },
              icon: const Icon(Icons.list), // Menetapkan ikon untuk tombol
              label: const Text('Lihat Daftar Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 255, 183, 0), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
            const SizedBox(height: 16.0), // Spasi antara tombol
            ElevatedButton.icon( // Tombol kedua
              onPressed: () {
                Navigator.push( // Navigasi ke halaman Tambah Item
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AddItemPage(), // Membuat instance AddItemPage
                  ),
                );
              },
              icon: const Icon(Icons.add), // Menetapkan ikon untuk tombol
              label: const Text('Tambah Produk'), // Menetapkan label untuk tombol
              style: ElevatedButton.styleFrom( // Mengatur gaya untuk tombol
                backgroundColor: const Color.fromARGB(255, 0, 255, 42), // Warna latar belakang tombol
                minimumSize: const Size(200, 50), // Ukuran minimum tombol
              ),
            ),
            const SizedBox(height: 16.0), // Spasi antara tombol
            ElevatedButton.icon( // Tombol ketiga
              onPressed: () {
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

class AddItemPage extends StatefulWidget { // Mendefinisikan kelas AddItemPage sebagai StatefulWidget
  const AddItemPage({super.key}); // Konstruktor untuk AddItemPage

  @override
  State<AddItemPage> createState() => _AddItemPageState(); // Membuat state untuk AddItemPage
}

class _AddItemPageState extends State<AddItemPage> { // Mendefinisikan kelas state untuk AddItemPage
  final _formKey = GlobalKey<FormState>(); // Kunci global untuk form
  final _nameController = TextEditingController(); // Kontroler untuk input nama
  final _amountController = TextEditingController(); // Kontroler untuk input jumlah
  final _descriptionController = TextEditingController(); // Kontroler untuk input deskripsi

  @override
  void dispose() { // Membersihkan kontroler saat widget dihapus
    _nameController.dispose(); // Menghapus _nameController dari memori
    _amountController.dispose(); // Menghapus _amountController dari memori
    _descriptionController.dispose(); // Menghapus _descriptionController dari memori
    super.dispose(); // Memanggil dispose dari superclass
  }

  void _saveItem() { // Fungsi untuk menyimpan item dan menampilkan pop-up
    if (_formKey.currentState!.validate()) { // Memeriksa validasi form
      showDialog( // Menampilkan dialog pop-up dengan informasi item
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Item Disimpan'), // Judul dialog
          content: Text( // Konten dialog
              'Name: ${_nameController.text}\nAmount: ${_amountController.text}\nDescription: ${_descriptionController.text}'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Menutup dialog
              },
              child: const Text('OK'), // Teks untuk tombol OK
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) { // Metode untuk membangun UI AddItemPage
    return Scaffold( // Menggunakan Scaffold sebagai kerangka untuk halaman
      appBar: AppBar( // Membuat AppBar
        title: const Text("Tambah Item Baru"), // Judul AppBar
        backgroundColor: const Color.fromARGB(255, 9, 161, 164), // Warna latar belakang AppBar
      ),
      body: Padding( // Membungkus body dengan padding
        padding: const EdgeInsets.all(16.0), // Memberikan padding 16 piksel di setiap sisi
        child: Form( // Membuat form untuk input data
          key: _formKey, // Menetapkan kunci form untuk validasi
          child: Column(
            children: [
              TextFormField( // Input untuk nama
                controller: _nameController, // Menggunakan _nameController untuk menangani input
                decoration: const InputDecoration(labelText: 'Name'), // Dekorasi input
                validator: (value) { // Validator untuk input nama
                  if (value == null || value.isEmpty) { // Validasi jika kosong
                    return 'Name tidak boleh kosong';
                  }
                  if (value.length < 3 || value.length > 50) { // Validasi panjang string
                    return 'Name harus 3-50 karakter';
                  }
                  return null; // Input valid
                },
              ),
              TextFormField( // Input untuk jumlah
                controller: _amountController, // Menggunakan _amountController untuk menangani input
                keyboardType: TextInputType.number, // Menetapkan jenis input sebagai angka
                decoration: const InputDecoration(labelText: 'Amount'), // Dekorasi input
                validator: (value) { // Validator untuk input jumlah
                  if (value == null || value.isEmpty) { // Validasi jika kosong
                    return 'Amount tidak boleh kosong';
                  }
                  final amount = int.tryParse(value); // Mengonversi input menjadi integer
                  if (amount == null || amount <= 0) { // Validasi jika bukan angka positif
                    return 'Amount harus angka positif';
                  }
                  return null; // Input valid
                },
              ),
              TextFormField( // Input untuk deskripsi
                controller: _descriptionController, // Menggunakan _descriptionController untuk menangani input
                decoration: const InputDecoration(labelText: 'Description'), // Dekorasi input
                validator: (value) { // Validator untuk input deskripsi
                  if (value == null || value.isEmpty) { // Validasi jika kosong
                    return 'Description tidak boleh kosong';
                  }
                  if (value.length < 5 || value.length > 200) { // Validasi panjang string
                    return 'Description harus 5-200 karakter';
                  }
                  return null; // Input valid
                },
              ),
              const SizedBox(height: 20), // Spasi antara input dan tombol
              ElevatedButton( // Tombol untuk menyimpan item
                onPressed: _saveItem, // Menetapkan fungsi _saveItem sebagai aksi tombol
                child: const Text('Save'), // Label untuk tombol
              ),
            ],
          ),
        ),
      ),
    );
  }
}
