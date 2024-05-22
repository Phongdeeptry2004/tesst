CREATE DATABASE novel;
use novel;
-- Tạo bảng người dùng
CREATE TABLE NguoiDung (
    MaNguoiDung INT PRIMARY KEY AUTO_INCREMENT,
    TenDangNhap VARCHAR(50) NOT NULL ,
    MatKhau VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
);

-- Tạo bảng truyện
CREATE TABLE Truyen (
    MaTruyen INT PRIMARY KEY AUTO_INCREMENT,
    TieuDe VARCHAR(255) NOT NULL,
    MaTacGia INT,
    MoTa TEXT,
    LuotXem int,
    LuotThich INT, 
    DanhGia int,
    ThoiDiemTao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaTacGia) REFERENCES NguoiDung(MaNguoiDung) 
);
CREATE TABLE TheLoai (
    MaTheLoai INT PRIMARY KEY,
    MaTruyen int,
    TenTheLoai VARCHAR(50),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
)
-- Tạo bảng lịch sử truyện
CREATE TABLE LichSuDocTruyen (
    MaLichSu INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaTruyen INT,
    ChapDocGanNhat INT,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);

-- Tạo bảng báo cáo lỗi truyện
CREATE TABLE BaoCaoLoi (
    MaBaoCao INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaTruyen INT,
    NoiDungBaoCao TEXT,
    ThoiDiemBaoCao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);
-- Tạo bảng chương truyện
CREATE TABLE ChuongTruyen (
    MaChuong INT PRIMARY KEY AUTO_INCREMENT,
    MaTruyen INT,
    SoChuong INT,
    TieuDeChuong VARCHAR(255),
    NoiDungChuong TEXT,
    ThoiDiemXuatBan TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaTruyen) REFERENCES Truyen(MaTruyen)
);
-- Tạo bảng bình luận
CREATE TABLE BinhLuan (
    MaBinhLuan INT PRIMARY KEY AUTO_INCREMENT,
    MaNguoiDung INT,
    MaChuong INT,
    NoiDungBinhLuan TEXT,
    ThoiDiemBinhLuan TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (MaNguoiDung) REFERENCES NguoiDung(MaNguoiDung),
     FOREIGN KEY (MaChuong) REFERENCES ChuongTruyen(MaChuong)
);

-- Sample data for NguoiDung table
INSERT INTO NguoiDung (TenDangNhap, MatKhau, Email) VALUES
('user1', 'password1', 'user1@example.com'),
('user2', 'password2', 'user2@example.com'),
('user3', 'password3', 'user3@example.com');

-- Sample data for Truyen table
INSERT INTO Truyen (TieuDe, MaTacGia, MoTa, LuotXem, LuotThich, DanhGia) VALUES
('Title 1', 1, 'Description 1', 1000, 500, 4.5),
('Title 2', 2, 'Description 2', 800, 300, 3.8),
('Title 3', 3, 'Description 3', 1200, 700, 4.0);

-- Sample data for TheLoai table
INSERT INTO TheLoai (MaTruyen, TenTheLoai) VALUES
(1, 'Genre 1'),
(2, 'Genre 2'),
(3, 'Genre 3');

-- Sample data for LichSuDocTruyen table
INSERT INTO LichSuDocTruyen (MaNguoiDung, MaTruyen, ChapDocGanNhat) VALUES
(1, 1, 10),
(2, 2, 5),
(3, 3, 8);

-- Sample data for ChuongTruyen table
INSERT INTO ChuongTruyen (MaTruyen, SoChuong, TieuDeChuong, NoiDungChuong) VALUES
(1, 1, 'Chapter 1', 'Content of Chapter 1'),
(2, 3, 'Chapter 3', 'Content of Chapter 3'),
(3, 2, 'Chapter 2', 'Content of Chapter 2');

-- Sample data for BinhLuan table
INSERT INTO BinhLuan (MaNguoiDung, MaChuong, NoiDungBinhLuan) VALUES
(1, 1, 'Comment 1 for Chapter 1'),
(2, 2, 'Comment 2 for Chapter 2'),
(3, 3, 'Comment 3 for Chapter 3');
-- Add a new column 'img' to the Truyen table
ALTER TABLE Truyen
ADD COLUMN img VARCHAR(255); -- Adjust the data type and size as needed
UPDATE Truyen
SET img = '/path/to/image1.jpg' -- Replace with the actual image path or data
WHERE MaTruyen = 1;

UPDATE Truyen
SET img = '/path/to/image2.jpg'
WHERE MaTruyen = 2;

UPDATE Truyen
SET img = '/path/to/image3.jpg'
WHERE MaTruyen = 3;