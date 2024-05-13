library(Seurat)
#library(SeuratData)
library(SeuratDisk)

setwd("C:/Users/perso/Desktop/WORK/QCB/4_SEMESTRE/Single_Cell/03_PROJECT/data/GSE203612_RAW")

Convert("10X_Visium_Buzzi2022Spatial_GSM5519057_10x_Visium_data.h5ad", dest = "h5seurat", overwrite = TRUE)
pbmc3k <- LoadH5Seurat("10X_Visium_Buzzi2022Spatial_GSM5519057_10x_Visium_data.h5seurat")
pbmc3k


library(sceasy)
library(reticulate)

loompy <- reticulate::import('loompy')

sceasy::convertFormat("GSM6177599_NYU_BRCA0_Vis_processed_filtered_feature_bc_matrix.h5", from="anndata", to="seurat",
                      outFile='filename.rds')
data1 <- readRDS("filename.rds")

h5closeAll()

h5f2 = rhdf5::h5read("GSM6177599_NYU_BRCA0_Vis_processed_filtered_feature_bc_matrix.h5", "matrix")
h5f2
h5f = rhdf5::H5Fopen("GSM6177599_NYU_BRCA0_Vis_processed_filtered_feature_bc_matrix.h5")
h5f

a <- unlist(h5f2)
