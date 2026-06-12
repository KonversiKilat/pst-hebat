# Panduan Menambah Dokumen — PST Hebat

## 1. Login

1. Buka browser, kunjungi:
   - **PST Hebat:** `https://shemahakam.com/wp-admin`

2. Masukin username & password:
   - **Username:** `admin`
   - **Password:** (lihat di chat)

3. Klik **Log In**

---

## 2. Buat Postingan Baru

Setelah login, kamu akan liat Dashboard WordPress.

1. Di menu kiri, klik **Posts → Add New**

2. Isi judul dokumen di kolom **Add title**

3. Di kolom **Publish** (kanan atas), cari **Categories** box

4. Centang kategorinya:
   - Contoh dokumen **K3**: centang **Safety & HSE**
   - Contoh dokumen **lingkungan**: centang **MEA**
   - Contoh dokumen **SMKP**: centang **SMKP Minerba**
   - Contoh dokumen **materi training**: centang **Materi**
   - Dan seterusnya

   > Semua kategori ini ada di bawah **Documents** (parent category).

5. Isi deskripsi dokumen di kolom editor (boleh kosong)

6. Klik **Publish** (tombol biru di kanan atas)

> **Done.** Postingan udah muncul di website.

---

## 3. Upload File PDF

Setiap dokumen bisa punya file PDF yang bisa dilihat langsung di halaman dokumen.

1. Saat buat/edit postingan, scroll ke bawah cari **PDF Document** box (di sidebar kanan)

2. Klik **Upload PDF**

3. Pilih file PDF dari komputer

4. Klik **Select**

5. URL PDF otomatis keisi

6. Klik **Publish** atau **Update**

---

## 4. Yang Perlu Diketahui

### Struktur Kategori

```
Documents (parent)
├── MEA                 → dokumen lingkungan
├── SMKP Minerba        → dokumen SMKP
├── Materi              → materi training/induksi
```

> **Note:** Jika butuh kategori baru, buat di **Posts → Categories** dengan parent **Documents**. Hanya kategori di bawah **Documents** yang pake template PDF viewer (3 kolom). Kategori lain (di luar Documents) pake template blog biasa.

### Halaman Dokumen

Setiap post yang masuk kategori Documents (atau child-nya) otomatis pake layout **3-column PDF viewer**:
- Kiri: daftar dokumen lain di kategori yang sama
- Tengah: tampilan PDF
- Kanan: metadata & tombol download

---

## 5. Tips

- **Upload PDF dulu baru publish** — biar langsung bisa dilihat
- **File PDF maksimal 128MB** (udah diatur di uploads.ini)
- Kalo lupa upload PDF, dokumen tetap tampil tapi gak ada file viewernya
- Nanti bisa edit kapan aja lewat **Posts → All Posts**

---

*Ada yang kurang jelas? Tanya aja.*
