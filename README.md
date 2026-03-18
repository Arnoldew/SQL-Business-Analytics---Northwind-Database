# SQL-Business-Analytics---Northwind-Database
SQL Business Analytics using PostgreSQL — Northwind Database analysis covering sales, customers, products &amp; employee performance

# 📊 SQL Business Analytics — Northwind Database

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-17-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Business%20Analytics-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)

---

## 📌 Project Overview

Proyek ini menganalisis data bisnis dari **Northwind Database** — sebuah dataset simulasi perusahaan distribusi makanan dan minuman — menggunakan SQL murni di atas PostgreSQL. Analisis mencakup 5 area utama: eksplorasi data, performa penjualan, perilaku pelanggan, analisis produk & kategori, dan performa karyawan.

**Tujuan project:** Menjawab pertanyaan bisnis nyata menggunakan SQL querying, mulai dari query dasar hingga multi-table JOIN dan agregasi kompleks.

---

## 🎯 Business Questions

| # | Pertanyaan Bisnis |
|---|-------------------|
| 1 | Bagaimana tren revenue dari tahun ke tahun? |
| 2 | Bulan apa yang secara konsisten menghasilkan penjualan tertinggi? |
| 3 | Produk dan kategori apa yang menghasilkan revenue terbesar? |
| 4 | Siapa pelanggan paling bernilai (high-value customers)? |
| 5 | Negara mana yang menjadi pasar utama perusahaan? |
| 6 | Karyawan mana yang memiliki performa terbaik berdasarkan revenue? |
| 7 | Produk mana yang membutuhkan restock segera? |

---

## 🛠️ Tools & Technologies

| Tool | Kegunaan |
|------|----------|
| **PostgreSQL 17** | Database engine |
| **DBeaver Community** | SQL query editor & GUI |
| **Git & GitHub** | Version control |

---

## 📁 Project Structure

```
04-sql-business-analytics/
│
├── 📁 dataset/
│   └── northwind.sql               # Raw database dump
│
├── 📁 queries/
│   ├── 01_basic_exploration.sql    # Eksplorasi struktur data
│   ├── 02_sales_performance.sql    # Analisis tren penjualan
│   ├── 03_customer_analysis.sql    # Analisis perilaku pelanggan
│   ├── 04_product_category.sql     # Analisis produk & kategori
│   └── 05_employee_performance.sql # Analisis performa karyawan
│
├── 📁 results/
│   ├── 01_data_overview.png
│   ├── 02_revenue_per_year.png
│   ├── 03_top10_products.png
│   ├── 04_top10_customers.png
│   ├── 05_revenue_by_country.png
│   ├── 06_revenue_by_category.png
│   ├── 07_low_stock_products.png
│   └── 08_employee_performance.png
│
└── README.md
```

---

## 📊 Dataset Overview

| Tabel | Jumlah Record |
|-------|--------------|
| Customers | 91 pelanggan |
| Orders | 830 transaksi |
| Products | 77 produk |
| Periode Data | 4 Juli 1996 – 6 Mei 1998 |

---

## 🔍 Key Findings

### 1. 📈 Tren Revenue Tahunan
- **Total revenue keseluruhan: $1,265,793.04** (periode Juli 1996 – Mei 1998)
- Revenue **1996**: $208,083.97 (hanya mencakup Juli–Desember)
- Revenue **1997**: $617,085.20 — tahun terkuat, tumbuh **~197%** dibanding 1996
- Revenue **1998**: $440,623.87 (hanya mencakup Januari–Mei, data terpotong)
- Jika diannualisasi, tren 1998 berpotensi melampaui 1997

### 2. 📅 Bulan Penjualan Terbaik
- **April 1998** menjadi bulan dengan revenue tertinggi: **$123,798.68** dari 74 orders
- **Maret 1998** ($104,854.16) dan **Februari 1998** ($99,415.29) melengkapi top 3
- Tren menunjukkan volume bisnis yang terus tumbuh dari waktu ke waktu

### 3. 🏆 Top 10 Produk Terlaris

| Rank | Produk | Qty Terjual | Revenue |
|------|--------|------------|---------|
| 1 | Côte de Blaye | 623 | $141,396.74 |
| 2 | Thüringer Rostbratwurst | 746 | $80,368.67 |
| 3 | Raclette Courdavault | 1,496 | $71,155.70 |
| 4 | Tarte au sucre | 1,083 | $47,234.97 |
| 5 | Camembert Pierrot | 1,577 | $46,825.48 |
| 6 | Gnocchi di nonna Alice | 1,263 | $42,593.06 |
| 7 | Manjimup Dried Apples | 886 | $41,819.65 |
| 8 | Alice Mutton | 978 | $32,698.38 |
| 9 | Carnarvon Tigers | 539 | $29,171.87 |
| 10 | Rössle Sauerkraut | 640 | $25,696.64 |

- **Côte de Blaye** unggul jauh meski bukan yang terbanyak secara kuantitas — indikasi harga premium tinggi
- **Raclette Courdavault** (1,496 qty) dan **Camembert Pierrot** (1,577 qty) adalah produk volume tinggi dengan harga menengah

### 4. 🌍 Pasar Berdasarkan Negara

| Rank | Negara | Customers | Orders | Revenue |
|------|--------|-----------|--------|---------|
| 1 | USA | 13 | 122 | $245,584.61 |
| 2 | Germany | 11 | 122 | $230,284.63 |
| 3 | Austria | 2 | 40 | $128,003.84 |
| 4 | Brazil | 9 | 83 | $106,925.78 |
| 5 | France | 10 | 77 | $81,358.32 |
| 6 | UK | 7 | 56 | $58,971.31 |
| 7 | Venezuela | 4 | 46 | $56,810.63 |
| 8 | Sweden | 2 | 37 | $54,495.14 |

- Total **21 negara** aktif sebagai pasar
- **Austria** sangat menonjol: hanya 2 customers namun menghasilkan $128,003 — keduanya adalah akun bernilai sangat tinggi yang wajib dipertahankan

### 5. 👥 Top 10 Customer

| Rank | Customer | Negara | Orders | Total Spent |
|------|----------|--------|--------|-------------|
| 1 | QUICK-Stop | Germany | 28 | $110,277.31 |
| 2 | Ernst Handel | Austria | 30 | $104,874.98 |
| 3 | Save-a-lot Markets | USA | 31 | $104,361.95 |
| 4 | Rattlesnake Canyon Grocery | USA | 18 | $51,097.80 |
| 5 | Hungry Owl All-Night Groce | Ireland | 19 | $49,979.91 |
| 6 | Hanari Carnes | Brazil | 14 | $32,841.37 |
| 7 | Königlich Essen | Germany | 14 | $30,908.38 |
| 8 | Folk och fä HB | Sweden | 19 | $29,567.56 |
| 9 | Mère Paillarde | Canada | 13 | $28,872.19 |
| 10 | White Clover Markets | USA | 14 | $27,363.60 |

- **Average Order Value** tertinggi dimiliki **QUICK-Stop: $1,282.29** per transaksi
- **Save-a-lot Markets** memiliki order terbanyak (31) dengan spending yang hampir setara Ernst Handel

### 6. 📦 Analisis Kategori Produk

| Rank | Kategori | Jumlah Produk | Qty Terjual | Revenue |
|------|----------|--------------|------------|---------|
| 1 | Beverages | 12 | 9,532 | $267,868.18 |
| 2 | Dairy Products | 10 | 9,149 | $234,507.28 |
| 3 | Confections | 13 | 7,906 | $167,357.23 |
| 4 | Meat/Poultry | 6 | 4,199 | $163,022.36 |
| 5 | Seafood | 12 | 7,681 | $131,261.74 |
| 6 | Condiments | 12 | 5,298 | $106,047.08 |
| 7 | Produce | 5 | 2,990 | $99,984.58 |
| 8 | Grains/Cereals | 7 | 4,562 | $95,744.59 |

- **Beverages** mendominasi di semua metrik: volume penjualan tertinggi (9,532 unit) sekaligus revenue tertinggi ($267,868)
- **Meat/Poultry** menarik: hanya 6 produk tapi revenue ke-4 terbesar — rata-rata harga per item sangat tinggi

### 7. 👔 Performa Karyawan

| Rank | Karyawan | Jabatan | Orders | Revenue |
|------|----------|---------|--------|---------|
| 1 | Margaret Peacock | Sales Representative | 156 | $232,890.85 |
| 2 | Janet Leverling | Sales Representative | 127 | $202,812.84 |
| 3 | Nancy Davolio | Sales Representative | 123 | $192,107.60 |
| 4 | Andrew Fuller | Vice President, Sales | 96 | $166,537.76 |
| 5 | Laura Callahan | Inside Sales Coordinator | 104 | $126,862.28 |
| 6 | Robert King | Sales Representative | 72 | $124,568.23 |
| 7 | Anne Dodsworth | Sales Representative | 43 | $77,308.07 |
| 8 | Michael Suyama | Sales Representative | 67 | $73,913.13 |
| 9 | Steven Buchanan | Sales Manager | 42 | $68,792.28 |

- **Margaret Peacock** adalah top performer: orders terbanyak (156) sekaligus revenue tertinggi ($232,890.85)
- **Andrew Fuller** (VP Sales) menghasilkan $166,537 dari 96 orders — menangani akun-akun bernilai besar

### 8. 🚚 Efisiensi Pengiriman

| Rank | Karyawan | Avg Hari Pengiriman |
|------|----------|---------------------|
| 1 | Steven Buchanan | 7.0 hari ⚡ |
| 2 | Nancy Davolio | 7.8 hari |
| 3 | Andrew Fuller | 8.1 hari |
| 4 | Robert King | 8.4 hari |
| 5 | Janet Leverling | 8.4 hari |
| 6 | Laura Callahan | 8.7 hari |
| 7 | Margaret Peacock | 8.8 hari |
| 8 | Michael Suyama | 9.1 hari |
| 9 | Anne Dodsworth | 10.9 hari 🐢 |

- **Steven Buchanan** tercepat dalam pengiriman (7 hari) meski revenue-nya paling rendah — spesialisasi di kecepatan bukan volume
- **Anne Dodsworth**: pengiriman terlama (10.9 hari) sekaligus revenue terendah kedua — perlu perhatian manajemen

### 9. ⚠️ Produk Perlu Restock Segera
- Ditemukan **18 produk** yang stoknya berada di bawah reorder level
- Produk paling kritis:

| Produk | Stok | Reorder Level | Status |
|--------|------|--------------|--------|
| Gorgonzola Telino | **0** | 20 | 🚨 Habis total! |
| Sir Rodney's Scones | 3 | 5 | ⚠️ Kritis |
| Longlife Tofu | 4 | 5 | ⚠️ Kritis |
| Louisiana Hot Spiced Okra | 4 | 20 | 🚨 Sangat kritis |
| Rogede sild | 5 | 15 | ⚠️ Kritis |

---

## 💡 Business Recommendations

| # | Rekomendasi | Prioritas |
|---|-------------|-----------|
| 1 | **Restock segera Gorgonzola Telino** (stok 0!) dan 17 produk lain di bawah reorder level | 🚨 Urgent |
| 2 | **Pertahankan akun Austria** (Ernst Handel) — 2 pelanggan senilai $128K, sangat berisiko jika churn | 🔴 High |
| 3 | **Investasi ekspansi di Germany** — jumlah orders setara USA namun customer lebih sedikit, artinya tiap customer lebih bernilai | 🔴 High |
| 4 | **Perkuat lini Beverages & Dairy** — dua kategori ini menyumbang $502K (~40% total revenue) | 🟡 Medium |
| 5 | **Replikasi strategi Margaret Peacock** — jadikan pendekatan top performer sebagai standar tim sales | 🟡 Medium |
| 6 | **Evaluasi & coaching Anne Dodsworth** — pengiriman terlama + revenue terendah kedua perlu intervensi | 🟡 Medium |

---

## 📸 Query Results

### 📊 Revenue Per Tahun
![Revenue Per Tahun](results/revenue_per_tahun.png)

### 🏆 Top 10 Produk Berdasarkan Revenue
![Top 10 Produk](results/top_10_produk_terlaris_berdasarkan_revenue.png)

### 🌍 Revenue Berdasarkan Negara
![Revenue by Country](results/distribusi_customer_per_negara.png)

### 👥 Top 10 Customer
![Top 10 Customer](results/top_10_customer_berdasarkan_total_belanja.png)

### 📦 Revenue Per Kategori Produk
![Revenue by Category](results/revenue_per_kategori_produk.png)

### 👔 Performa Karyawan
![Employee Performance](results/revenue_per_karyawan.png)


---

## 🚀 How to Run This Project

1. **Install PostgreSQL** (versi 16 atau 17)
2. **Buat database baru** bernama `northwind`
3. **Import dataset:**
   ```sql
   -- Di DBeaver atau psql, jalankan file:
   \i dataset/northwind.sql
   ```
4. **Jalankan query** di folder `queries/` secara berurutan dari `01` hingga `05`

---

## 👤 Author

**[Nama Kamu]**
- GitHub: [@username](https://github.com/Arnoldew)
- LinkedIn: [linkedin.com/in/username](https://www.linkedin.com/in/arnoldew-ray-ruby/))

---

*Project ini merupakan bagian dari seri 10 Portfolio Project Data Analyst.*
