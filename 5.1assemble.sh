#BSUB -M 128000
#BSUB -W 1440
#BSUB -n 16
#BSUB -R "span[hosts=1]"
#BSUB -q normal
#BSUB -J HCLO3
#BSUB -e /users/reziw3/%J.err
#BSUB -o /users/reziw3/%J.err
module load spades

#DE NOVO ASSEMBLY WITH SPADES
#THIS WORKFLOW USES ILLUMINA AND NANOPORE READS

#--nanopore trimmed_reads/P7741_minion.fastq
spades.py --isolate -o P7741_minion_SPADES_OUT -1 trimmed_reads/P7741_R1.fastq.gz -2 trimmed_reads/P7741_R2.fastq.gz --nanopore trimmed_reads/P7741_minion.fastq

#spades.py --careful -o P7741_SPADES_OUT -1 trimmed_reads/P7741_R1.fastq.gz -2 trimmed_reads/P7741_R2.fastq.gz
