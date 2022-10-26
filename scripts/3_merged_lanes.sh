#! /bin/bash

# shellcheck disable=SC2164
cd ../workflow;

zcat output/2_trimmed_output/half_C1_1_S06_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C1_1_S06_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C1_1_S06_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C1_1_S06_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C1_1_S06_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C1_1_S06_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C1_3_S21_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C1_3_S21_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C1_3_S21_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C1_3_S21_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C1_3_S21_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C1_3_S21_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C1_4_S28_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C1_4_S28_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C1_4_S28_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C1_4_S28_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C1_4_S28_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C1_4_S28_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C4_1_S07_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C4_1_S07_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C4_1_S07_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C4_1_S07_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C4_1_S07_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C4_1_S07_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C4_4_S29_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C4_4_S29_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C4_4_S29_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C4_4_S29_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C4_4_S29_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C4_4_S29_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C5_1_S08_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C5_1_S08_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C5_1_S08_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C5_1_S08_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C5_1_S08_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C5_1_S08_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C5_2_S14_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C5_2_S14_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C5_2_S14_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C5_2_S14_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C5_2_S14_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C5_2_S14_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_C5_3_S22_L1_R1_val_1.fq.gz output/2_trimmed_output/half_C5_3_S22_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_C5_3_S22_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_C5_3_S22_L1_R2_val_2.fq.gz output/2_trimmed_output/half_C5_3_S22_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_C5_3_S22_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Ctrl_1_S05_L1_R1_val_1.fq.gz output/2_trimmed_output/half_Ctrl_1_S05_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Ctrl_1_S05_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_Ctrl_1_S05_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Ctrl_1_S05_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Ctrl_1_S05_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Ctrl_3_S20_L1_R1_val_1.fq.gz  output/2_trimmed_output/half_Ctrl_3_S20_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Ctrl_3_S20_merged_R1.fq.gz &
wait $!
zcat output/2_trimmed_output/half_Ctrl_3_S20_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Ctrl_3_S20_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Ctrl_3_S20_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Ctrl_4_S27_L1_R1_val_1.fq.gz output/2_trimmed_output/half_Ctrl_4_S27_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Ctrl_4_S27_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_Ctrl_4_S27_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Ctrl_4_S27_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Ctrl_4_S27_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Nas2_2_S13_L1_R1_val_1.fq.gz output/2_trimmed_output/half_Nas2_2_S13_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Nas2_2_S13_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_Nas2_2_S13_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Nas2_2_S13_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Nas2_2_S13_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Nas2_3_S19_L1_R1_val_1.fq.gz output/2_trimmed_output/half_Nas2_3_S19_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Nas2_3_S19_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_Nas2_3_S19_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Nas2_3_S19_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Nas2_3_S19_merged_R2.fq.gz &
zcat output/2_trimmed_output/half_Nas2_4_S26_L1_R1_val_1.fq.gz output/2_trimmed_output/half_Nas2_4_S26_L2_R1_val_1.fq.gz > output/3_merged_lanes/half_Nas2_4_S26_merged_R1.fq.gz &
zcat output/2_trimmed_output/half_Nas2_4_S26_L1_R2_val_2.fq.gz output/2_trimmed_output/half_Nas2_4_S26_L2_R2_val_2.fq.gz > output/3_merged_lanes/half_Nas2_4_S26_merged_R2.fq.gz &
zcat output/2_trimmed_output/U_Undetermined_X_S00_L1_R1_val_1.fq.gz output/2_trimmed_output/U_Undetermined_X_S00_L2_R1_val_1.fq.gz > output/3_merged_lanes/U_Undetermined_X_S00_merged_R1.fq.gz &
zcat output/2_trimmed_output/U_Undetermined_X_S00_L1_R2_val_2.fq.gz output/2_trimmed_output/U_Undetermined_X_S00_L2_R2_val_2.fq.gz > output/3_merged_lanes/U_Undetermined_X_S00_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C1_1_S02_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C1_1_S02_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C1_1_S02_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C1_1_S02_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C1_1_S02_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C1_1_S02_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C1_3_S16_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C1_3_S16_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C1_3_S16_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C1_3_S16_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C1_3_S16_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C1_3_S16_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C1_4_S25_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C1_4_S25_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C1_4_S25_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C1_4_S25_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C1_4_S25_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C1_4_S25_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C4_1_S03_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C4_1_S03_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C4_1_S03_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C4_1_S03_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C4_1_S03_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C4_1_S03_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C4_2_S11_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C4_2_S11_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C4_2_S11_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C4_2_S11_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C4_2_S11_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C4_2_S11_merged_R2.fq.gz &
wait $!
zcat output/2_trimmed_output/wo_C4_3_S17_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C4_3_S17_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C4_3_S17_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C4_3_S17_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C4_3_S17_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C4_3_S17_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C5_1_S04_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C5_1_S04_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C5_1_S04_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C5_1_S04_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C5_1_S04_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C5_1_S04_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C5_2_S12_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C5_2_S12_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C5_2_S12_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C5_2_S12_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C5_2_S12_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C5_2_S12_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_C5_3_S18_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_C5_3_S18_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_C5_3_S18_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_C5_3_S18_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_C5_3_S18_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_C5_3_S18_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_2_S10_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Ctrl_2_S10_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Ctrl_2_S10_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_2_S10_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Ctrl_2_S10_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Ctrl_2_S10_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_3_S15_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Ctrl_3_S15_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Ctrl_3_S15_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_3_S15_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Ctrl_3_S15_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Ctrl_3_S15_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_4_S24_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Ctrl_4_S24_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Ctrl_4_S24_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Ctrl_4_S24_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Ctrl_4_S24_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Ctrl_4_S24_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_1_S01_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Nas2_1_S01_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Nas2_1_S01_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_1_S01_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Nas2_1_S01_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Nas2_1_S01_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_2_S09_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Nas2_2_S09_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Nas2_2_S09_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_2_S09_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Nas2_2_S09_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Nas2_2_S09_merged_R2.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_4_S23_L1_R1_val_1.fq.gz output/2_trimmed_output/wo_Nas2_4_S23_L2_R1_val_1.fq.gz > output/3_merged_lanes/wo_Nas2_4_S23_merged_R1.fq.gz &
zcat output/2_trimmed_output/wo_Nas2_4_S23_L1_R2_val_2.fq.gz output/2_trimmed_output/wo_Nas2_4_S23_L2_R2_val_2.fq.gz > output/3_merged_lanes/wo_Nas2_4_S23_merged_R2.fq.gz &
