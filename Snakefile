rule all:
    input:
        "result/step_three.txt"

rule step_two:
    output:
        "data/step_two.txt",
    shell:
        "plink2 --version > {output}"

rule step_three:
    input:
        "data/step_two.txt",
    output:
        "result/step_three.txt",
    script:
        "scripts/step_three.py"