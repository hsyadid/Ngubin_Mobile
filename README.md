# ngubin

## Tugas 7

<details>
<summary>
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya
</summary>

Penjelasan dari kedua jenis widget ini adalah, untuk Stateless Widget ini merupakan widget yang tidak memiliki status atau kondisi yang dapat berubah selama siklus hidupnya. Artinya, Stateless Widget bersifat statis atau tidak berubah. beda seperti Stateless widget Stateful Widget adalah widget yang dapat berubah seiring waktu atau dalam menanggapi interaksi pengguna. Stateful Widget memiliki state atau status yang dapat diubah melalui fungsi `setState()` yang disediakan oleh Flutter. Penggunaanya memungkinkan aplikasi menampilkan data dinamis atau melakukan pembaruan visual sesuai dengan perubahan yang terjadi.

</details>

<details>
<summary>
2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya !
</summary>
 * Scaffold -> ini adalah struktur dasar bagi AppBar dan body
 * AppBar -> menampilkan nama aplikasi (Ngubin App) dengan warna yang telah saya tentukan 
 * Padding -> Menambahkan ruang di sekitar widget lain
 * Column -> Menyusun widget lain secara vertikal
 * Row -> Menyusun widget lain secara horizontal
 * InfoCard -> Setiap kartu menampilkan data yang berbeda seperti NPM, Name, dan Class
 * Card -> Menyediakan tampilan berbentuk kartu dengan efek bayangan
 * Text -> untuk menampilkan judul aplikasi, teks sambutan, dan informasi pada InfoCard
 * SizedBox -> SizedBox memberikan jarak vertikal 16 piksel antara InfoCard dan elemen berikutnya
 * Center -> Memusatkan widget yang ada di dalamnya di tengah layar atau area yang disediakan
 * ItemCard  -> Menampilkan item interaktif yang memiliki warna latar yang berubah-ubah dan aksi ketika ditekan
 * Material -> Menyediakan dukungan untuk gaya material design pada widget
 * InkWell -> InkWell` digunakan dalam `ItemCard` untuk menunjukkan aksi ketika kartu ditekan oleh pengguna
 * Icon -> Setiap kartu memiliki ikon yang berbeda berdasarkan data `ItemHomepage`, seperti ikon mood, tambah, atau logout
 * SnackBar ->  Menampilkan pesan sementara di bagian bawah layar sebagai respon cepat ketika pengguna menekan `ItemCard`
</details>

<details>
<summary>
3. Apa fungsi dari setState() ? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut ?
</summary>

Fungsi ini memiliki tujuan untuk mengatur Stateful widget, Ketika sebuah Stateful Widget ingin memperbarui tampilannya berdasarkan perubahan data atau interaksi pengguna, fungsi `setState()` dipanggil untuk memberi tahu bahwa ada perubahan pada status widget, yang menyebabkan Flutter menjalankan ulang proses build untuk memperbarui tampilan dengan data terbaru. dan semua variabel atau properti yang berada di dalam kelas state dan yang terpengaruh oleh perubahan data akan terdampak oleh `setState()`

</details>

<details>
<summary>
4. Jelaskan perbedaan antara const dengan final !
</summary>
`const` digunakan untuk mendeklarasikan nilai yang bersifat konstan pada saat kompilasi dan tidak akan berubah selama siklus hidup aplikasi. Artinya, ketika kita menetapkan nilai `const`, nilai tersebut harus sudah diketahui dan tetap sejak awal, dan nilainya tidak bisa dimodifikasi atau diubah sama sekali setelah ditetapkan. Dan untuk `final` digunakan untuk variabel yang nilainya ditetapkan satu kali saja tetapi tidak harus pada saat kompilasi. Nilai dari `final` bisa diberikan saat runtime, tetapi setelah diberikan, nilainya tidak dapat diubah lagi.
</details>

<details>
<summary>
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas !
</summary>
* Mengubah Tema Warna Aplikasi disesuaikan dengan ketentuan soal <br>
* Mengubah Sifat Widget Halaman Menu Menjadi Stateless <br>
* Membuat Card Sederhana yang Berisi NPM, Nama, dan Kelas <br>
* Membuat Button Card Sederhana dengan tulisan yang di sesuaikan dengan ketentuan tugas yaitu (Lihat Daftar Produk, Tambah Produk, dan Logout) <br>
* Mengintegrasikan InfoCard dan ItemCard untuk Ditampilkan di root <br>
</details>

## Tugas 8

<details>
<summary>
1.Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
</summary>
`const` digunakan untuk mendeklarasikan objek yang tidak berubah dan hanya akan dibuat sekali pada projek anda atau bisa dibilang objek yang konstan, keuntungan dari sifat seperti ini memoru yang digunakan cenderung lebih hemat dikarenakan tdiak akan di buat kietika widget di render, dan kode pun lebih mudah untuk di pelihara

yang saya rasakan hal kondisi yang paling cocok untuk mengunakan `const` adalah ketika widget tidak akan berubah selama runtime, tetapi jika widget menerima sesuatu yang dinamis yang akan di ubah oleh `setState` tidak disarankan mengunakan `const`

</details>

<details>
<summary>
2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
</summary>
Column dan juga row pada flutter digunakan untuk menyusun tata letak vertikal dan horizontal, dan dua duanya berfungsi sebagai kontainer

Column di gunakan untuk menyusun elemen secara vertikal. Columnmemiliki beberapa atribut seperti `mainAxisAlignment` untuk menyusun widget di sepanjang sumbu utama (vertikal pada Column) dan `crossAxisAlignment` untuk menyusun di sepanjang sumbu silang (horizontal pada Column). contoh pengunaanya pada kode yang saya buat ini adalah :

```
Column(
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    // Row untuk menampilkan tiga InfoCard secara horizontal.
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InfoCard(title: 'NPM', content: npm),
        InfoCard(title: 'Name', content: name),
        InfoCard(title: 'Class', content: className),
      ],
    ),
    const SizedBox(height: 16.0),
    Center(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: Text(
              'Welcome to Mental Health Tracker',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          // GridView widget untuk menampilkan ItemCard dalam grid.
        ],
      ),
    ),
  ],
)
```

Row adalah widget yang digunakan untuk menyusun elemen secara horizontal, sam seperti Column widget ini juga memiliki atribut mainAxisAlignment dan crossAxisAlignment yang memungkinkan kita untuk mengontrol perataan widget di sepanjang sumbu utama (horizontal pada Row) dan sumbu silang (vertikal pada Row). contoh pengunaanya dalam kode saya adalah :

```
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    InfoCard(title: 'NPM', content: npm),
    InfoCard(title: 'Name', content: name),
    InfoCard(title: 'Class', content: className),
  ],
)
```

Dapat disimpulkan Column dan Row adalah widget tata letak utama di Flutter yang berfungsi untuk menyusun elemen-elemen secara berurutan, namun dengan orientasi yang berbeda. Column menyusun elemen-elemen secara vertikal dari atas ke bawah, sedangkan Row menyusun elemen-elemen secara horizontal dari kiri ke kanan. Kedua widget ini dilengkapi dengan properti mainAxisAlignment dan crossAxisAlignment yang membantu mengatur posisi elemen di dalamnya, namun dengan orientasi sumbu yang berbeda: sumbu utama Column adalah vertikal, sedangkan pada Row sumbu utamanya adalah horizontal. Penggunaan Column lebih cocok untuk tata letak bertumpuk seperti daftar item atau konten multi-baris, yang membutuhkan susunan vertikal. Sebaliknya, Row ideal untuk menyusun elemen-elemen secara sejajar dalam satu baris, seperti kumpulan ikon atau informasi yang ditempatkan bersebelahan.

</details>

<details>
<summary>
3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
</summary>

Pada tugas kali ini saya mengunakan `TextFormField` dan `ElevatedButton`. `TextFormField` digunakan sebagai elemen input untuk menerima teks dan angka dalam berbagai bagian form, seperti name, amount, dan description. Setiap `TextFormField` dilengkapi dengan properti validator yang memungkinkan adanya validasi untuk setiap input. Misalnya, pada input name, `TextFormField` divalidasi agar tidak kosong, memiliki minimal tiga karakter, dan tidak melebihi 50 karakter. Pada input amount, TextFormField ini juga divalidasi agar tidak kosong, hanya menerima angka, dan memastikan bahwa angka tersebut positif. Input description juga memanfaatkan `TextFormField`, dengan validasi agar tidak kosong serta memiliki panjang minimal 10 karakter dan maksimal 200 karakter, untuk memastikan input deskripsi yang cukup informatif namun tidak berlebihan.

Ada beberapa elemet input yang tidak saya gunakan, beberapa nya adalah DropdownButton, Checkbox, Radio, Switch, dan Slider. saya tidak mengunakan beberapa elemen input ini didasarkan oelh kebutuhan pada aplikasi saya karena kita ambil contoh DropdownButton, DropdownButton biasanya digunakan untuk memilih satu opsi dari daftar pilihan

</details>

<details>
<summary>
4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
</summary>

Tema diatur mengunakan `Theme.of(context).colorScheme.primary` untuk menjaga konsistensi warna utama di berbagai elemen, seperti pada AppBar dan tombol Save di halaman form. Tema utama aplikasi diatur untuk menggunakan warna merah sebagai primary color, yang kemudian diterapkan di seluruh widget sesuai dengan konteks tema.

dengan mengunakan theme ini aplikasi bisa secara otomatis menyesuaikan warna sesuai skema yang di tetapkan. dan pada aplikasi yang saya buat ini saya mengimplementasikanya pada berkas `menu.dart`

</details>

<details>
<summary>
5.  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

</summary>

`Navigator` adalah kelas pada flutter yang membantu untuk menevagasi banyak halaman dengan konsep stack yang mana annti halaman di tambahkan kedalam stack ini. terdapat 2 metode utama dalam kelas ini yaitu `Navigator.push` untuk menambahkan halaman baru ke atas tumpukan dan mengarahkan pengguna ke halaman tersebut dan `Navigator.pop ` yang digunakan untuk menghapus halaman saat ini dari tumpukan dan kembali ke halaman sebelumnya.

</details>
