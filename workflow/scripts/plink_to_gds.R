#! /usr/bin/env Rscript
input <- snakemake@input
input[c("bed_file", "fam_file", "bim_file")] <- paste0(input$plink_prefix, c(".bed", ".fam", ".bim"))
input <- input[!(names(input) %in% "plink_prefix")]
arguments <- c(input, snakemake@params, snakemake@output)
do.call(SeqArray::seqBED2GDS, arguments)
print(sessionInfo())
