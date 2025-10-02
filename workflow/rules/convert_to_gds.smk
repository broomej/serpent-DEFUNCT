rule plink_to_gds:
    input:
        bed_fn=".test/resources/toy.bed",
        bim_fn=".test/resources/toy.bim",
        fam_fn=".test/resources/toy.fam",
    output:
        out_gdsfn="results/gds.gds"
    params: lookup(within=config, dpath="plink_to_gds"),
    script: "../scripts/plink_to_gds.R"
