CREATE TABLE rak_buku (
    id SERIAL PRIMARY KEY,
    kode_rak_buku VARCHAR(20) UNIQUE NOT NULL,
    kategori VARCHAR(100)
);

CREATE TABLE buku ( 
    id SERIAL PRIMARY KEY, 
    nama VARCHAR(100) NOT NULL,
    kode VARCHAR(20) UNIQUE NOT NULL,
    rak_buku_id INT,                                
    FOREIGN KEY (rak_buku_id) REFERENCES rak_buku(id)
);

CREATE TABLE kategori (
    id SERIAL PRIMARY KEY,
    nama_kategori VARCHAR(100) NOT NULL,
    kode VARCHAR(20) UNIQUE NOT NULL,
    buku_id INT NOT NULL,                           
    FOREIGN KEY (buku_id) REFERENCES buku(id)
);

CREATE TABLE petugas (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    no_hp VARCHAR(20),
    alamat VARCHAR(150)
);

CREATE TABLE peminjam (
    id SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    waktu_pinjam TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    waktu_kembalikan TIMESTAMP,
    petugas_id INT UNIQUE,                          
    FOREIGN KEY (petugas_id) REFERENCES petugas(id)
);

CREATE TABLE peminjam_rak_buku (
    id SERIAL PRIMARY KEY,
    peminjam_id INT NOT NULL,
    rak_buku_id INT NOT NULL,
    tanggal_pinjam TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    tanggal_kembali TIMESTAMP,
    FOREIGN KEY (peminjam_id) REFERENCES peminjam(id),
    FOREIGN KEY (rak_buku_id) REFERENCES rak_buku(id)
);
