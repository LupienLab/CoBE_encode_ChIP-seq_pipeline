#!/bin/bash
module load caper/1.4.2
module load singularity
sbatch -p all -J chip_submit --export=ALL --mem 3G -t 5-0 --wrap "caper run /PATH/TO/chip.wdl -c /PATH/TO/caper.conf --cromwell /PATH/TO/cromwell-42.jar --womtool /PATH/TO/womtool-52.jar -i $1 --singularity /PATH/TO/singularity/chip-seq-pipeline_v1.7.1.sif"
