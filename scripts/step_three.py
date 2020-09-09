with open(snakemake.input[0]) as f:
    content = f.readlines()

content = [x.strip() + '_update'  for x in content]

f = open(snakemake.output[0], "w")
f.write('-'.join(content))
f.close()
