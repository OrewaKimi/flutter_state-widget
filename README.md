# 📱 Perbandingan Flutter: Stateless vs Stateful Widget

Proyek ini menunjukkan perbedaan mendasar antara **`StatelessWidget`** dan **`StatefulWidget`** di Flutter, dengan UI modern, responsif, dan mudah dipahami.

---

## 🧊 Apa itu `StatelessWidget`?

Bayangin kamu bikin teks atau ikon yang **nggak berubah-ubah**.  
Nah, **`StatelessWidget`** itu cocok buat tampilan yang **tetap dan statis**.

Biasanya dipakai untuk:
- Teks atau ikon tetap
- Header atau title
- Tampilan tanpa interaksi user

`StatelessWidget` **tidak punya state internal**, jadi **nggak bisa berubah sendiri** setelah ditampilkan.

---

## 🔥 Apa itu `StatefulWidget`?

Kalau kamu ingin tampilan **berubah saat user berinteraksi**, kamu butuh **`StatefulWidget`**.

Contohnya:
- Counter yang bisa ditambah
- Toggle switch
- Form input yang berubah-ubah

`StatefulWidget` punya **state internal** yang bisa diubah pakai `setState()`, dan UI akan otomatis **rebuild**.

---

## 🔍 Perbandingan Singkat

| Fitur                          | StatelessWidget                   | StatefulWidget                    |
|-------------------------------|------------------------------------|-----------------------------------|
| State internal                 | ❌ Tidak ada                       | ✅ Ada                             |
| Bisa berubah?                 | ❌ Tidak                           | ✅ Bisa                           |
| Cocok untuk                   | Tampilan statis (header, ikon)     | Interaksi dinamis (counter, input)|
| Rebuild otomatis?             | ❌ Tidak                           | ✅ Ya, lewat `setState()`          |

---

## ✅ Kesimpulan Singkat

> **`StatelessWidget` = Seperti gambar poster. Begitu jadi, nggak bisa diubah.**  
> **`StatefulWidget` = Seperti kalkulator. Bisa berubah tiap kali dipakai.**

---

## 📸 Tampilan Aplikasi
![image](https://github.com/user-attachments/assets/684da15c-6952-41a3-9c79-b00e184e7453)
Aplikasi ini menunjukkan dua kartu counter berdampingan:

- 🔹 **Stateless Counter** – Nilai tetap, tidak bisa diubah
- 🔸 **Stateful Counter** – Bisa ditambah dan di-reset oleh user

Semua dibungkus dengan UI modern berbasis Material 3 dan desain responsif.

---

## 📁 Struktur Proyek


