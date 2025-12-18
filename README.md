# 🎬 Lita Animation Transition

**Lita Animation Transition** adalah aplikasi Flutter yang menampilkan penerapan berbagai jenis **Animation dan Transition** pada antarmuka mobile. Aplikasi ini dikembangkan sebagai tugas mata kuliah **Pemrograman Mobile 2** untuk memahami konsep animasi, transisi halaman, dan interaksi pengguna.

---

## 📸 Screenshot Aplikasi & Penjelasan

### 🏠 1. Home Page – Modern & Animated
![Home Page](screenshots/Home%20Page.png)

**Penjelasan:**
- Halaman utama aplikasi
- Menampilkan navigasi ke berbagai jenis animasi
- Desain modern dengan background gradasi warna
- Berfungsi sebagai pusat navigasi seluruh fitur

---

### 🔄 2. Implicit Animation Page
![Implicit Animation](screenshots/Implicit%20Animation.png)

**Penjelasan:**
- Menggunakan `AnimatedContainer`
- Animasi berjalan otomatis saat state berubah
- Tidak menggunakan `AnimationController`
- Cocok untuk animasi sederhana seperti perubahan ukuran, warna, dan posisi

---

### 🎯 3. Explicit Animation Page
![Explicit Animation](screenshots/Explicit%20Animation.png)

**Penjelasan:**
- Menggunakan `AnimationController`, `Tween`, dan `AnimatedBuilder`
- Animasi meliputi:
  - Perubahan skala
  - Perubahan opacity
  - Transisi warna
- Dilengkapi tombol kontrol:
  - Forward
  - Reverse
  - Repeat
  - Stop
- Cocok untuk animasi kompleks dan terkontrol

---

### ❤️ 4. Interactive Animation Page
![Interactive Animation](screenshots/interactive_animation.png)

**Penjelasan:**
- Animasi dipicu oleh interaksi pengguna (tap)
- Efek scale animation pada ikon favorit
- Warna berubah sesuai status (like/unlike)
- Memberikan feedback visual yang responsif

---

### 🔀 5. Transition Example Page
![Transition Page](screenshots/transition_page.png)

**Penjelasan:**
- Menampilkan contoh **custom page transition**
- Transisi antar halaman menggunakan `PageRouteBuilder`
- Efek slide animation yang halus
- Background disesuaikan dengan halaman lain agar konsisten

---

## 🚀 Cara Menjalankan Aplikasi

1. Pastikan Flutter sudah terinstall
2. Clone repository:
   ```bash
   git clone https://github.com/LitaAlentina287/lita_animation_transition.git


## ✨ Fitur Aplikasi

- **Implicit Animation**  
  Animasi otomatis menggunakan widget bawaan Flutter seperti `AnimatedContainer` tanpa menggunakan `AnimationController`.

- **Explicit Animation**  
  Animasi yang dikontrol penuh menggunakan `AnimationController`, `Tween`, dan `AnimatedBuilder` untuk efek skala, warna, dan opacity.

- **Interactive Animation**  
  Animasi berbasis input pengguna (tap) menggunakan `GestureDetector` yang memberikan umpan balik visual secara langsung.

- **Custom Page Transition**  
  Transisi antar halaman menggunakan `PageRouteBuilder` dengan efek **slide animation** yang halus dan modern.

---

## 🎨 Desain & UI

- Tampilan modern dengan **gradient background** bernuansa ungu dan pink  
- Elemen dekoratif berbentuk **circle** untuk mempercantik UI  
- Konsistensi warna dan layout di setiap halaman  
- Fokus pada pengalaman pengguna (UX) dan kejelasan animasi

---

## 🛠️ Teknologi yang Digunakan

- **Flutter**
- **Dart**
- Material Design
- Flutter Animation Framework

---

## 📁 Struktur Project

```txt
lib/
├─ main.dart
└─ pages/
├─ implicit_animation_page.dart
├─ explicit_animation_page.dart
├─ interactive_animation_page.dart
└─ transition_example_page.dart

screenshots/
├─ home_page.png
├─ implicit_animation.png
├─ explicit_animation.png
├─ interactive_animation.png
└─ transition_page.png
```

