
CREATE DATABASE shipper;
USE shipper;

-- Cấu trúc bảng ban đầu
CREATE TABLE SHIPPERS (
	Shipper_id INT PRIMARY KEY AUTO_INCREMENT,
    Shipper_Name VARCHAR(255),
    Phone VARCHAR(255)
);

-- Dòng lệnh lỗi 1
-- Tìm dấu nháy đơn đang bị thiếu ở đâu
INSERT INTO SHIPPERS (Shipper_Name, Phone)
VALUES ('Giao Hàng Nhanh', '0901234567');
-- Sai cú pháp INSERT 
-- VALUES yêu cầu mỗi cột phải nằm trong 1 () cặp đầy đủ 
-- Nhưng ở đây:
-- 'Giao Hàng Nhanh' là 1 dòng, và '0901234567' bị tách riêng thành dòng khác 
-- -> SQL không hiểu map dữ liệu vào cột -> Báo lỗi cú pháp  
-- -----------------------------------------------------------------------------

-- Dong lệnh lỗi 2: Hệ thống chạy được nhưng dữ liệu bị "Kẹt" (Thiếu thông tin)
-- Tại sao cột Phone lại bị Null trong trường hợp này
INSERT INTO SHIPPERS
VALUES ('Viettel Post');
-- Vấn đề không truyền gia trị cho Phone
-- Hoặc nhập thiếu cột nhưng không chỉ định rõ
-- => Cột Phone bị Null 

