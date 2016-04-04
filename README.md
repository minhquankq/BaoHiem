# BaoHiem
Phần mềm quản lý học sinh tham gia bảo hiểm y tế

Hướng dẫn cài đặt
--

## Yêu cầu môi trường
- Java 7: (http://sinhvienit.net/forum/cai-dat-va-thiet-lap-moi-truong-java-tren-windows-8-8-1.337376.html)
- Maven: (http://laptrinh.vn/d/73-cai-dat-maven-tren-windows.html)
- MySQL: (http://thachpham.com/thu-thuat/cai-dat-localhost-xampp.html)
- Git: (http://git-scm.com/download/win)

## Cài đặt
- Step 1: Clone project to local: `git clone https://github.com/vmquan/BaoHiem.git`
- Step 2: Run `mvn package` để build project.
- Step 3: Vào MySQL tạo database tên là 'baohiem'.
- Step 4: Start server: `java -jar target/baohiem.jar`
- Step 5: Vào địa chỉ [localhost:8080](localhost:8080) để test.
