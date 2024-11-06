# ngubin

## Tugas 7

<details>
<summary>
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya !
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
* Mengubah Tema Warna Aplikasi disesuaikan dengan ketentuan soal 
* Mengubah Sifat Widget Halaman Menu Menjadi Stateless
* Membuat Card Sederhana yang Berisi NPM, Nama, dan Kelas
* Membuat Button Card Sederhana dengan tulisan yang di sesuaikan dengan ketentuan tugas yaitu (Lihat Daftar Produk, Tambah Produk, dan Logout)
* Mengintegrasikan InfoCard dan ItemCard untuk Ditampilkan di root
</details>
