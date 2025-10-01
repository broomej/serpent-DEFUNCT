rule plink_to_gds:
    input:
        plink_prefix=config["plink_prefix"]
    output:
        gds="results/gds.gds"
    script: "scripts/plink_to_gds.R"
