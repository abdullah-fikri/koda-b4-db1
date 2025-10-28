# Database perpustakaan markdown

MArkdown untuk simulasi databse perpustakaan, yang menggunakan entitas buku, kategori, rak buku, petugas dan peminjam

## 📸 Preview

```mermaid
erDiagram
   buku {
        string nama
        string kode
    }

    kategori {
        string kategori
        string kode
    }

    rak_buku {
        string nama
        string kode
        string kategori
    }
    petugas {
        string nama
        string no_hp
        string alamat
    }
    peminjam {
        string nama
        string waktu_pinjam
        string waktu_kembalikan
    }

    buku }o--o{ kategori : di_kategorikan
    rak_buku }o--o{ kategori : ditaruh_di
    peminjam || --o{ rak_buku : milih_buku
    petugas || -- || peminjam : konfirmasi

```

## 🛠️ Tech Stack

**Mermaid**
tech untuk membuat mermaid

**Git** — untuk version control dan kolaborasi
