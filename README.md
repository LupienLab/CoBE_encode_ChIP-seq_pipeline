# CoBE_encode_ChIP-seq_pipeline

References : https://github.com/ENCODE-DCC/chip-seq-pipeline2

**STEP 1: Login to cluster:**
```
ssh username@cluster.org
```

**STEP 2: Download encode chip-seq pipeline:**
```
git clone https://github.com/ENCODE-DCC/chip-seq-pipeline2.git
```

**STEP 3: Download Singularity image for environment:**
```
mkdir singularity
cd singularity
module load singularity
singularity pull --arch amd64 library://nandankita/default/lupien-lab:chip-seq-pipeline_v1.7.1
cd ..
```

**STEP 4: Download the following jar files and place in the directory:**
```
wget https://github.com/broadinstitute/cromwell/releases/download/78/womtool-78.jar
wget https://github.com/broadinstitute/cromwell/releases/download/78/cromwell-78.jar
```

**STEP 5: Write input json and set genome paths
```
Write input json file as shown here(https://github.com/ENCODE-DCC/chip-seq-pipeline2/blob/master/example_input_json/template.json), you can also browse other json files to see what params are best fit for you. Have the genome tsv file properly set up.
```

**STEP 6: Run pipeline
```
Edit run_encode-chip-seq-pipeline.sh file downloading from this repo with full paths, replace all "PATH/TO/" to correct paths. And run the following with passing json file as parameter:
```
Final run
```
sbatch run_encode-chip-seq-pipeline.sh template.json
```
