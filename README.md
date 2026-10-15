<h1 align="center">R Spatial Data Basics: RDS, CSV, RData</h1>

<p align="center">
  <img src="https://img.shields.io/badge/R-4.6.1-276DC3?logo=r&logoColor=white" alt="R">
  <img src="https://img.shields.io/badge/License-MIT-blue.svg" alt="License">
  <img src="https://img.shields.io/badge/Data-CSV_Excel-blue.svg" alt="Data Source">
</p>

## Overview

Week 3 exercises covering R data structures, file I/O (CSV, Excel, RDS, RData), and conversion from data.frame to spatial `sf` objects.

## Tools & Technologies

- **R** (>= 4.1.0)
- **RStudio**
- **Git & GitHub**

## R Packages

| Package | Purpose |
|---------|---------|
| `sf` | Simple Features — spatial data handling |
| `terra` | Raster data analysis |
| `readr` | Fast CSV reading (tidyverse) |
| `readxl` | Excel file import |

## Project Structure

```
├── data/
│   └── sensus_2024.csv          # Census data (dummy)
├── Code_Week_3.R               # Main analysis script
├── Data_Sensus_2024.R           # Data-specific script
├── Install_Packages_Minggu_3.R  # Package installer
└── README.md
```

## Data

| Column | Type | Description |
|--------|------|-------------|
| `id` | integer | Unique identifier |
| `nama` | character | Location name |
| `populasi` | integer | Population count |
| `lon` | numeric | Longitude |
| `lat` | numeric | Latitude |
| `elevasi` | numeric | Elevation (meters) |

## Output

| File | Format | Description |
|------|--------|-------------|
| `hasil_bersih.csv` | CSV | Cleaned census data |
| `titik_sf.rds` | RDS | Spatial point object |
| `workspace.RData` | RData | Full workspace snapshot |

## Installation

```r
install.packages(c("sf", "terra", "readr", "readxl"))
```

## Usage

```r
source("Code_Week_3.R")
```

## Workflow

1. Read CSV/Excel data into data.frame
2. Inspect structure with `str()` and `summary()`
3. Convert to sf object with `st_as_sf()`
4. Export cleaned data (CSV) and spatial objects (RDS/RData)

## License

Data: BPS Indonesia (public domain). Code: MIT License.

## Contact

Maintained by [Attaftazayn](https://github.com/Attaftazayn)
