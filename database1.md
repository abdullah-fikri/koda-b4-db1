```mermaid
erDiagram
   buku {
        string nama
        string kode
    }

    kategori {
        string nama_kategori
        string kode
    }

    rak_buku {
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

    buku ||--o{ kategori : di_kategorikan
    rak_buku ||--o{ kategori : ditaruh_di
    peminjam }O --o{ rak_buku : milih_buku
    petugas || -- || peminjam : konfirmasi

```
