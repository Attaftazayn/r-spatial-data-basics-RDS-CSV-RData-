options(
  repos = c(
    CRAN = "https://cloud.r-project.org"
  )
)
install_satu_package <- function(pkg) {
  if (requireNamespace(pkg, quietly = TRUE)) {
    message(
      "[OK] ",
      pkg,
      " sudah terpasang."
    )
    return(
      invisible(TRUE)
    )
  }
  message(
    "\nMeng-install: ",
    pkg
  )
  hasil <- tryCatch(
    {
      install.packages(
        pkg,
        dependencies = TRUE
      )
      requireNamespace(
        pkg,
        quietly = TRUE
      )
    },
    error = function(e) {
      message(
        "[GAGAL] ",
        pkg,
        ": ",
        conditionMessage(e)
      )
      FALSE
    }
  )
  if (isTRUE(hasil)) {
    message(
      "[BERHASIL] ",
      pkg
    )
  } else {
    message(
      "\nPackage ",
      pkg,
      " belum berhasil dipasang."
    )
  }
  invisible(hasil)
}
install_satu_package("sf")
install_satu_package("terra")
install_satu_package("readxl")
install_satu_package("readr")
cat(
  "\n\nSELESAI.\n",
  "Restart RStudio sebelum menjalankan script materi.\n",
  sep = ""
)
