sensus_2024 <- data.frame(
  id = 1:10,
  kabupaten = c(
    "Jakarta Pusat",
    "Jakarta Utara",
    "Jakarta Barat",
    "Jakarta Selatan",
    "Jakarta Timur",
    "Bogor",
    "Depok",
    "Tangerang",
    "Bekasi",
    "Bandung"
  ),
  provinsi = c(
    rep("DKI Jakarta", 5),
    rep("Jawa Barat", 2),
    "Banten",
    rep("Jawa Barat", 2)
  ),
  populasi = c(
    1066000,
    1873000,
    2450000,
    2385000,
    3056000,
    5489000,
    2056000,
    1911000,
    2564000,
    2527000
  ),
  laki_laki = c(
    530000,
    945000,
    1230000,
    1195000,
    1540000,
    2780000,
    1035000,
    965000,
    1295000,
    1270000
  ),
  perempuan = c(
    536000,
    928000,
    1220000,
    1190000,
    1516000,
    2709000,
    1021000,
    946000,
    1269000,
    1257000
  ),
  luas_km2 = c(
    48.1,
    146.7,
    129.5,
    141.3,
    188.0,
    2991.8,
    200.3,
    164.6,
    210.5,
    167.3
  ),
  lon = c(
    106.8451,
    106.9004,
    106.7588,
    106.8070,
    106.9004,
    106.8060,
    106.7942,
    106.6297,
    106.9924,
    107.6191
  ),
  lat = c(
    -6.1862,
    -6.1384,
    -6.1683,
    -6.2615,
    -6.2250,
    -6.5971,
    -6.4025,
    -6.1783,
    -6.2383,
    -6.9175
  )
)
sensus_2024$kepadatan <- round(
  sensus_2024$populasi / sensus_2024$luas_km2,
  1
)
print(sensus_2024)
write.csv(
  sensus_2024,
  "data/sensus_2024.csv",
  row.names = FALSE
)
cat(
  "\nFile dummy berhasil dibuat:\n",
  "data/sensus_2024.csv\n"
)