#! /usr/bin/env Rscript
input <- snakemake@input
output <- snakemake@output
SeqArray::seqBED2GDS(
    bed.fn = input$bed_file,
    fam.fn = input$fam_file,
    bim.fn = input$bim_file,
    out.gdsfn=output$gds
)
print(sessionInfo())
