setwd("C:/Users/user/Downloads/semester 5/Pemspa/Weekly_code")
cek_package <- function(pkg) {
  requireNamespace(pkg, quietly = TRUE)
}
package_wajib <- c("sf", "terra")
package_hilang <- package_wajib[
  !vapply(package_wajib, cek_package, logical(1))
]
if (length(package_hilang) > 0) {
  stop(
    paste0(
      "\nPACKAGE BELUM TERPASANG: ",
      paste(package_hilang, collapse = ", "),
      "\n\nInstall SATU KALI dari Console RStudio:\n",
      'install.packages(c("sf", "terra"))\n\n',
      "Setelah selesai, restart RStudio dan jalankan script kembali.\n",
      "Jangan menjalankan install.packages() berulang kali di dalam script."
    ),
    call. = FALSE
  )
}
suppressPackageStartupMessages(library(sf))
suppressPackageStartupMessages(library(terra))
dir.create("Week_3/data", showWarnings = FALSE, recursive = TRUE)
dir.create("Week_3/output", showWarnings = FALSE, recursive = TRUE)
dir.create("scripts", showWarnings = FALSE, recursive = TRUE)
set.seed(42)
cat("Working directory:\n")
print(getwd())
nama <- "Bob"
Age <- 54
has_W2 <- TRUE
age <- 1
Age <- 2
AGE <- 3
nama
Age
has_W2
age
Age
AGE
x_int <- 124L
x_num <- 124.56
x_chr <- "Hello World"
x_log <- TRUE
x_na  <- NA
class(x_int)
class(x_num)
class(x_chr)
class(x_log)
typeof(x_num)
as.numeric("123")
as.character(500)
as.logical(1)
as.Date("2026-09-14")
kelas <- c(
  "forest",
  "urban",
  "water"
)
kelas <- factor(kelas)
kelas
class(kelas)
koordinat_x <- c(
  101.5,
  102.3,
  104.1
)
koordinat_x
koordinat_x * 2
elevasi <- c(
  500,
  1200,
  300,
  1500
)
elevasi > 1000
elevasi[elevasi > 1000]
x <- c(
  10,
  20,
  30,
  40,
  50
)
x[1]
x[2:4]
x[-1]
x[x > 25]
peta_index <- data.frame(
  id = 1:5,
  nama = c("A", "B", "C", "D", "E"),
  populasi = c(1000, 2500, 1800, 3200, 1500),
  lon = c(106.8, 106.9, 107.0, 107.1, 107.2),
  lat = c(-6.2, -6.3, -6.4, -6.5, -6.6),
  elevasi = c(500, 1200, 300, 1500, 900)
)
peta_index[1:5, "populasi"]
peta_index[
  peta_index$elevasi > 1000,
]
skor <- list(
  Agam = 351,
  Bayu = 352,
  Chyntia = 353
)
skor
skor$Agam
skor[["Bayu"]]
a_list <- list(
  1,
  2.5,
  "Yes",
  TRUE,
  NA
)
a_list
a_list[[2]] <- 99
names(a_list) <- c(
  "a",
  "b",
  "c",
  "d",
  "e"
)
a_list$new <- "baru"
a_list
m <- matrix(
  1:9,
  nrow = 3,
  byrow = TRUE
)
m
m[1, 2]
arr <- array(
  1:24,
  dim = c(3, 4, 2)
)
arr
arr[, , 1]
peta <- data.frame(
  id = 1:3,
  nama = c("A", "B", "C"),
  lon = c(106.8, 106.9, 107.0),
  lat = c(-6.2, -6.3, -6.4),
  elevasi = c(500, 1200, 300)
)
peta
peta$elevasi
peta[
  peta$elevasi > 1000,
]
titik_sf <- st_as_sf(
  peta,
  coords = c("lon", "lat"),
  crs = 4326
)
titik_sf
st_geometry_type(titik_sf)
st_crs(titik_sf)
hitung_jarak <- function(
  x1,
  y1,
  x2,
  y2
) {
  dx <- x2 - x1
  dy <- y2 - y1
  jarak <- sqrt(
    dx^2 + dy^2
  )
  return(jarak)
}
hitung_jarak(
  0,
  0,
  3,
  4
)
x_demo <- c(
  10,
  20,
  NA,
  40,
  50
)
df_demo <- data.frame(
  id = 1:3,
  nilai = c(10, 20, 30)
)
sum(
  x_demo,
  na.rm = TRUE
)
mean(
  x_demo,
  na.rm = TRUE
)
nrow(df_demo)
summary(df_demo)
getwd()
list.files("Week_3/data")
df_sensus <- read.csv(
  "Week_3/data/sensus_2024.csv"
)
head(df_sensus)
df_sensus <- read.csv(
  "Week_3/data/sensus_2024.csv"
)
str(df_sensus)
if (requireNamespace("readr", quietly = TRUE)) {
  df_sensus_readr <- readr::read_csv(
    "Week_3/data/sensus_2024.csv",
    show_col_types = FALSE
  )
  print(df_sensus_readr)
} else {
  message(
    "Package 'readr' tidak terpasang. ",
    "Contoh readr dilewati; Base R tetap dapat membaca CSV."
  )
}
if (
  requireNamespace("readxl", quietly = TRUE) &&
  file.exists("Week_3/data/jalan.xlsx")
) {
  df_jalan <- readxl::read_excel(
    "Week_3/data/jalan.xlsx",
    sheet = 2
  )
  print(df_jalan)
} else {
  message(
    "Contoh Excel dilewati. ",
    "Untuk menjalankannya: install package 'readxl' ",
    "dan letakkan data/jalan.xlsx."
  )
}
df_hasil <- df_sensus
write.csv(
  df_hasil,
  "Week_3/output/hasil_bersih.csv",
  row.names = FALSE
)
saveRDS(
  titik_sf,
  "Week_3/output/titik_sf.rds"
)
titik_sf_baca <- readRDS(
  "Week_3/output/titik_sf.rds"
)
titik_sf_baca
save(
  df_sensus,
  titik_sf,
  file = "Week_3/output/workspace.RData"
)
load(
  "Week_3/output/workspace.RData"
)
cek_layer <- function(x) {
  cat(
    "\n------------------------------\n"
  )
  cat(
    "CLASS:\n"
  )
  print(
    class(x)
  )
  cat(
    "\nSUMMARY:\n"
  )
  print(
    summary(x)
  )
  invisible(x)
}
cek_layer(
  pos_sf
)
cek_layer(
  dem
)
cat(
  "\n============================================================\n",
  "SELESAI.\n",
  "Script berhasil mencapai bagian akhir.\n",
  "Cek folder 'output' untuk melihat file hasil.\n",
  "============================================================\n",
  sep = ""
)
