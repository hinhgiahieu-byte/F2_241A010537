# BÀI THỰC HÀNH F2 – FLUTTER LAYOUT

## 1. Thông tin sinh viên

- **Họ và tên:** Huỳnh Ngọc Hiếu
- **MSSV:** 241A010537
- **Lớp:** K26 – Công nghệ thông tin
- **Môn học:** Lập trình trên các thiết bị di động
- **Bài:** F2 – Flutter Layout

---

## 2. Mục tiêu bài thực hành

Bài thực hành F2 nhằm áp dụng các widget bố cục cơ bản trong Flutter, xây dựng giao diện đăng nhập có khả năng thích ứng với nhiều kích thước màn hình.

Các nội dung đã thực hiện:

- Sử dụng `Stack` và `Positioned`.
- Sử dụng `Row` và `Column`.
- Sử dụng `Expanded` và `Spacer`.
- Sử dụng `SingleChildScrollView` để tránh lỗi tràn màn hình.
- Sử dụng `LayoutBuilder` để thay đổi bố cục theo chiều rộng màn hình.
- Khi màn hình có chiều rộng từ 700px trở lên, giao diện chuyển sang bố cục 2 cột.
- Thực hiện nâng cao NC1: Light/Dark Mode.
- Thực hiện nâng cao NC2: Tách widget thành các file riêng.

---

# 3. Giao diện chính

Giao diện gồm:

- Header/banner.
- Tiêu đề ứng dụng.
- Form đăng nhập.
- Ô nhập tài khoản.
- Ô nhập mật khẩu.
- Chức năng hiện/ẩn mật khẩu.
- Checkbox ghi nhớ đăng nhập.
- Nút đăng nhập.
- Đăng nhập bằng tài khoản trường.
- Nút đăng ký.
- Thông tin sinh viên.
- Các ô thống kê.

### Ảnh minh chứng

<img width="1917" height="1037" alt="Ảnh chụp màn hình 2026-10-02 112739" src="https://github.com/user-attachments/assets/cd0064c5-ba57-4bff-aac1-07e57e1f6163" />

> Ảnh trên minh họa giao diện chính của ứng dụng.

---

# 4. Sử dụng Stack và Positioned

Trong phần Header, sử dụng `Stack` để xếp chồng các thành phần giao diện.

`Positioned` được sử dụng để đặt các thành phần tại vị trí phù hợp trong Header.

Các widget được áp dụng:

- `Stack`
- `Positioned`
- `Align`
- `Container`
- `Text`
- `Switch`

<img width="415" height="863" alt="Ảnh chụp màn hình 2026-10-02 171013" src="https://github.com/user-attachments/assets/94226464-c1b2-4e1b-986e-f1b6d54af7b3" />

---

# 5. Sử dụng Row, Column, Expanded và Spacer

Giao diện sử dụng:

- `Column` để sắp xếp các thành phần theo chiều dọc.
- `Row` để sắp xếp các thành phần theo chiều ngang.
- `Expanded` để chia không gian giữa các thành phần.
- `Spacer` để tạo khoảng cách linh hoạt.

### Ảnh minh chứng

<img width="882" height="422" alt="Ảnh chụp màn hình 2026-10-02 121036" src="https://github.com/user-attachments/assets/57ac5ff9-f154-4ad6-a3e6-5d4f45da9dec" />
---

# 6. Chống lỗi tràn màn hình

Ứng dụng sử dụng `SingleChildScrollView` để cho phép cuộn nội dung khi màn hình có kích thước nhỏ hoặc khi bàn phím xuất hiện.

Nhờ đó giao diện không bị lỗi `Overflow` trong quá trình sử dụng.

Các trường hợp đã kiểm tra:

- Màn hình dọc.
- Màn hình ngang.
- Khi bàn phím xuất hiện.
- Khi nội dung không đủ không gian hiển thị.

### Màn hình dọc

<img width="505" height="1015" alt="Ảnh chụp màn hình 2026-10-02 113620" src="https://github.com/user-attachments/assets/2aa3c0a7-c34b-4f61-a507-9768dda9fa48" />

### Khi bàn phím xuất hiện

<img width="437" height="906" alt="Ảnh chụp màn hình 2026-10-02 171133" src="https://github.com/user-attachments/assets/c39d42c2-d77e-4647-b45d-5fdceb0df337" />

---

# 7. Bố cục thích ứng theo kích thước màn hình

Ứng dụng sử dụng `LayoutBuilder` để kiểm tra chiều rộng màn hình.

Quy tắc bố cục:

- **Chiều rộng < 700px:** hiển thị bố cục 1 cột.
- **Chiều rộng ≥ 700px:** hiển thị bố cục 2 cột.

Điều này giúp giao diện phù hợp với cả điện thoại và màn hình lớn/tablet.

### Bố cục 1 cột

<img width="1917" height="1037" alt="Ảnh chụp màn hình 2026-10-02 112739" src="https://github.com/user-attachments/assets/cfa2f4b7-272e-4c10-bded-84607b0b858b" />

### Bố cục 2 cột

<img width="1796" height="485" alt="Ảnh chụp màn hình 2026-10-02 163225" src="https://github.com/user-attachments/assets/8eed46b9-8520-443f-b93e-c831a7ffcdda" />
---

# 8. Đối chiếu XML và Flutter

| XML Android | Flutter | Ví dụ sử dụng trong bài |
|---|---|---|
| `LinearLayout` vertical | `Column` | Sắp xếp form đăng nhập theo chiều dọc |
| `LinearLayout` horizontal | `Row` | Sắp xếp các thành phần theo chiều ngang |
| `layout_weight="1"` | `Expanded(flex: 1)` | Chia không gian giữa các thành phần |
| `padding` | `Padding` | Tạo khoảng cách bên trong widget |
| `margin` | `Container(margin:)` | Tạo khoảng cách bên ngoài widget |
| `match_parent` | `double.infinity` | Cho widget mở rộng hết chiều rộng |
| `wrap_content` | Kích thước tự nhiên | Widget tự xác định kích thước theo nội dung |
| `RelativeLayout` | `Stack` + `Positioned` | Đặt thành phần theo vị trí |
| `FrameLayout` | `Stack` | Xếp chồng các widget |
| `ScrollView` | `SingleChildScrollView` | Cho phép cuộn nội dung |
| `@drawable` background | `BoxDecoration` | Tạo nền, bo góc và màu sắc |
| `themes.xml` / `@style` | `ThemeData` | Cấu hình giao diện sáng/tối |
| `layout-land` | `LayoutBuilder` | Thay đổi bố cục theo chiều rộng |


---

# 9. Bài nâng cao NC1 – Light/Dark Mode

## Nội dung thực hiện

Ứng dụng hỗ trợ chuyển đổi giữa hai chế độ giao diện:

- Light Mode.
- Dark Mode.

Flutter sử dụng:

- `ThemeData`
- `lightTheme`
- `darkTheme`
- `ThemeMode`
- `Switch`

Khi người dùng bật Switch, giao diện chuyển sang Dark Mode.

Khi tắt Switch, giao diện trở lại Light Mode.

### Light Mode

<img width="505" height="1015" alt="Ảnh chụp màn hình 2026-10-02 113620" src="https://github.com/user-attachments/assets/47d9dd14-146e-40e6-8b69-abfb6d83d557" />

### Dark Mode

<img width="415" height="863" alt="Ảnh chụp màn hình 2026-10-02 171013" src="https://github.com/user-attachments/assets/1cf28071-df77-4cd4-bc47-451e223c9e77" />

---

# 10. Bài nâng cao NC2 – Tách Widget thành các file riêng

Để tổ chức source code rõ ràng hơn, các widget được tách thành các file riêng trong thư mục `lib/widgets/`.

Cấu trúc:

```text
lib/
├── main.dart
└── widgets/
    ├── header_banner.dart
    ├── profile_card.dart
    └── stat_box.dart
```
<img width="1796" height="485" alt="Ảnh chụp màn hình 2026-10-02 163225" src="https://github.com/user-attachments/assets/ea42df1a-0fa7-4fae-b5f6-0dadd88d663d" />
11. Kết luận

Qua bài thực hành F2, em đã thực hành cách xây dựng giao diện bằng Flutter và áp dụng các widget bố cục để tạo giao diện có khả năng thích ứng với nhiều kích thước màn hình.

Bài thực hành cũng giúp em hiểu rõ hơn cách xử lý bố cục 1 cột, 2 cột, tránh lỗi Overflow, quản lý Theme và tổ chức source code thành các widget riêng biệt.

