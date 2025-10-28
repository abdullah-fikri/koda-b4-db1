CREATE TABLE buku ( 
    id SERIAL PRIMARY KEY, 
    nama VARCHAR(100), 
    kode VARCHAR(20)
);

CREATE TABLE rak_buku (
    id SERIAL PRIMARY KEY,
    kode VARCHAR(20),
    kategori VARCHAR(100)
);

CREATE TABLE kategori (
    id SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(100),
    kode VARCHAR(20),
    buku_id INT,
    rak_buku_id INT,
    FOREIGN KEY (buku_id) REFERENCES buku(id),
    FOREIGN KEY (rak_buku_id) REFERENCES rak_buku(id)
);

CREATE TABLE petugas (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100),
    no_hp VARCHAR(20),
    alamat VARCHAR(100)
);

CREATE TABLE peminjam (
    id SERIAL PRIMARY KEY,
    petugas_id INT UNIQUE,
    nama VARCHAR(100),
    waktu_pinjam TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    waktu_kembalikan TIMESTAMP,
    FOREIGN KEY (petugas_id) REFERENCES petugas(id)
);

CREATE TABLE peminjam_rak_buku (
    id SERIAL PRIMARY KEY,
    peminjam_id INT,
    rak_buku_id INT,
    tanggal_pinjam TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tanggal_kembali TIMESTAMP,
    FOREIGN KEY (peminjam_id) REFERENCES peminjam(id),
    FOREIGN KEY (rak_buku_id) REFERENCES rak_buku(id)
);

