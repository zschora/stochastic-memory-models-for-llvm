# R1.1 corrected paired statistics

Effect is the median paired block ratio; negative is faster. Confidence intervals are block-bootstrap intervals, not separately bootstrapped A and treatment intervals.

| campaign | case | mode | n | blocks | B vs A | C vs A | AA vs A | B class | C class |
| --- | --- | --- | ---: | ---: | ---: | ---: | ---: | --- | --- |
| EXP-20261107-R1A | read_read_offset | - | 1024 | 5 | -8.5% | -15.5% | +12.0% | high_noise | high_noise |
| EXP-20261107-R1A | read_read_offset | - | 16384 | 5 | -2.8% | +5.5% | -1.3% | high_noise | high_noise |
| EXP-20261107-R1A | read_read_offset | - | 131072 | 5 | -28.2% | -27.0% | -6.9% | high_noise | high_noise |
| EXP-20261107-R1A | read_read_offset | - | 1048576 | 5 | -15.6% | -16.9% | +8.0% | high_noise | high_noise |
| EXP-20261107-R1A | read_read_offset | - | 8388608 | 5 | -27.3% | -28.3% | -3.8% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R1A | shifted_reuse | - | 1024 | 5 | +4.4% | +4.0% | -0.8% | inconclusive | inconclusive |
| EXP-20261107-R1A | shifted_reuse | - | 16384 | 5 | -11.5% | -5.9% | -8.1% | high_noise | high_noise |
| EXP-20261107-R1A | shifted_reuse | - | 131072 | 5 | -19.2% | +0.1% | -1.9% | high_noise | high_noise |
| EXP-20261107-R1A | shifted_reuse | - | 1048576 | 5 | -22.3% | -4.7% | -8.7% | high_noise | high_noise |
| EXP-20261107-R1A | shifted_reuse | - | 8388608 | 5 | -24.9% | +0.2% | +10.6% | high_noise | high_noise |
| EXP-20261107-R1A | simd_metadata | - | 1024 | 5 | +101.2% | +111.6% | -3.6% | high_noise | high_noise |
| EXP-20261107-R1A | simd_metadata | - | 16384 | 5 | +122.6% | +143.4% | +2.7% | confirmed_harmful | confirmed_harmful |
| EXP-20261107-R1A | simd_metadata | - | 131072 | 5 | +21.2% | +23.6% | +5.5% | high_noise | high_noise |
| EXP-20261107-R1A | simd_metadata | - | 1048576 | 5 | -8.2% | -7.3% | -2.1% | inconclusive | inconclusive |
| EXP-20261107-R1A | simd_metadata | - | 8388608 | 5 | -15.0% | -10.1% | +3.0% | inconclusive | inconclusive |
| EXP-20261107-R1A | simd_metadata_scalar | - | 1024 | 5 | -6.1% | -3.4% | -3.3% | inconclusive | inconclusive |
| EXP-20261107-R1A | simd_metadata_scalar | - | 16384 | 5 | +16.6% | +21.8% | -14.9% | high_noise | high_noise |
| EXP-20261107-R1A | simd_metadata_scalar | - | 131072 | 5 | +7.9% | +4.1% | +5.8% | high_noise | high_noise |
| EXP-20261107-R1A | simd_metadata_scalar | - | 1048576 | 5 | +3.1% | -10.7% | -3.3% | inconclusive | inconclusive |
| EXP-20261107-R1A | simd_metadata_scalar | - | 8388608 | 5 | -16.9% | -10.4% | -0.6% | inconclusive | inconclusive |
| EXP-20261107-R1A | simd_reduction | - | 16384 | 5 | -5.3% | -13.6% | -1.1% | inconclusive | confirmed_profitable |
| EXP-20261107-R1A | simd_reduction | - | 1048576 | 5 | -28.3% | -31.0% | -0.8% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R1A | simd_reduction | - | 8388608 | 5 | -30.1% | -35.0% | +3.1% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer | - | 1024 | 5 | +6.4% | +1.8% | +4.9% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer | - | 16384 | 5 | +1.6% | +1.0% | +1.6% | inconclusive | inconclusive |
| EXP-20261107-R1A | producer_consumer | - | 131072 | 5 | -14.3% | -2.5% | -13.4% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer | - | 1048576 | 5 | -4.3% | -9.8% | +11.5% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer | - | 8388608 | 5 | +0.6% | +2.7% | +10.6% | high_noise | high_noise |
| EXP-20261107-R1A | known_vec | body | 10000 | 5 | +2.8% | +0.1% | -2.1% | inconclusive | neutral |
| EXP-20261107-R1A | read_read | - | 1024 | 5 | -0.1% | +5.1% | +6.1% | high_noise | high_noise |
| EXP-20261107-R1A | read_read | - | 16384 | 5 | -10.3% | -8.6% | -0.1% | inconclusive | inconclusive |
| EXP-20261107-R1A | read_read | - | 131072 | 5 | -20.2% | -19.5% | -4.3% | confirmed_profitable | inconclusive |
| EXP-20261107-R1A | read_read | - | 1048576 | 5 | -20.6% | -17.6% | +3.1% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R1A | read_read | - | 8388608 | 5 | -28.3% | -26.5% | -1.4% | inconclusive | confirmed_profitable |
| EXP-20261107-R1A | producer_consumer_split | - | 1024 | 5 | -14.4% | -18.3% | -3.3% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer_split | - | 16384 | 5 | -0.1% | +0.7% | +10.1% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer_split | - | 131072 | 5 | -16.6% | -22.9% | -6.0% | high_noise | high_noise |
| EXP-20261107-R1A | producer_consumer_split | - | 1048576 | 5 | -29.3% | -24.2% | +2.8% | confirmed_profitable | inconclusive |
| EXP-20261107-R1A | producer_consumer_split | - | 8388608 | 5 | -28.5% | -27.3% | +1.1% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R1C-offsets | shifted_reuse_k2 | - | 16384 | 5 | -0.0% | -1.3% | +0.9% | inconclusive | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k2 | - | 131072 | 5 | -17.0% | +2.7% | +2.6% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k2 | - | 1048576 | 5 | -20.4% | +5.8% | -4.7% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k2 | - | 8388608 | 5 | -32.4% | -1.1% | +0.1% | confirmed_profitable | neutral |
| EXP-20261107-R1C-offsets | shifted_reuse_k4 | - | 16384 | 5 | +5.6% | +0.6% | +3.9% | inconclusive | neutral |
| EXP-20261107-R1C-offsets | shifted_reuse_k4 | - | 131072 | 5 | -15.5% | +2.3% | +3.4% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k4 | - | 1048576 | 5 | -19.5% | +1.4% | +2.8% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k4 | - | 8388608 | 5 | -31.5% | +0.6% | +6.8% | high_noise | high_noise |
| EXP-20261107-R1C-offsets | shifted_reuse_k8 | - | 16384 | 5 | +1.3% | +2.7% | -1.2% | inconclusive | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k8 | - | 131072 | 5 | -16.6% | -0.3% | +2.0% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k8 | - | 1048576 | 5 | -15.9% | +0.9% | -0.1% | confirmed_profitable | inconclusive |
| EXP-20261107-R1C-offsets | shifted_reuse_k8 | - | 8388608 | 5 | -30.3% | +0.3% | +0.1% | confirmed_profitable | neutral |
| EXP-20261107-R1F-patch | shifted_reuse | - | 1048576 | 4 | -17.2% | -1.0% | -3.2% | requires_remeasurement | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_metadata | - | 1024 | 4 | +nan% | +123.9% | +4.6% | - | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_metadata | - | 1048576 | 4 | +nan% | +2.9% | -2.1% | - | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_metadata | - | 131072 | 4 | +nan% | +24.5% | +2.9% | - | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_metadata | - | 16384 | 4 | +nan% | +110.5% | +0.0% | - | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_metadata | - | 8388608 | 4 | +nan% | -11.4% | -1.3% | - | requires_remeasurement |
| EXP-20261107-R1F-patch | simd_reduction | - | 1048576 | 4 | +nan% | -36.4% | +2.0% | - | requires_remeasurement |
| EXP-20261107-R11-audit | known_vec | body | 10000 | 9 | -0.1% | -0.1% | +0.2% | neutral | neutral |
| EXP-20261107-R11-audit | known_vec | hot | 10000 | 9 | +1.2% | +1.1% | +0.5% | neutral | neutral |
| EXP-20261107-R11-audit | known_vec | setup | 10000 | 9 | -24.9% | -23.3% | -0.4% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-audit | producer_consumer_split | - | 131072 | 9 | -16.3% | -9.9% | +0.7% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-audit | producer_consumer_split | - | 16384 | 9 | +0.1% | +24.4% | -1.4% | inconclusive | inconclusive |
| EXP-20261107-R11-audit | read_read | - | 1024 | 9 | -4.8% | -0.1% | -0.2% | inconclusive | inconclusive |
| EXP-20261107-R11-audit | read_read | - | 16384 | 9 | +3.5% | +5.3% | -0.9% | inconclusive | inconclusive |
| EXP-20261107-R11-audit | read_read_offset | - | 1024 | 9 | -8.0% | -5.6% | -0.6% | confirmed_profitable | inconclusive |
| EXP-20261107-R11-audit | shifted_reuse | - | 1048576 | 7 | -20.5% | -2.5% | +0.4% | confirmed_profitable | inconclusive |
| EXP-20261107-R11-audit | shifted_reuse | - | 131072 | 7 | -17.1% | +3.0% | -0.8% | confirmed_profitable | inconclusive |
| EXP-20261107-R11-audit | simd_metadata | - | 1048576 | 7 | -9.0% | -9.3% | -2.5% | inconclusive | confirmed_profitable |
| EXP-20261107-R11-audit | simd_metadata | - | 8388608 | 7 | -20.9% | -21.1% | -0.2% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-audit | simd_metadata_scalar | - | 16384 | 9 | +29.7% | +36.8% | +1.0% | confirmed_harmful | confirmed_harmful |
| EXP-20261107-R11-followup | producer_consumer | - | 1048576 | 7 | +0.9% | +2.7% | -2.4% | inconclusive | inconclusive |
| EXP-20261107-R11-followup | producer_consumer | - | 131072 | 7 | +1.2% | +1.0% | +1.3% | neutral | neutral |
| EXP-20261107-R11-followup | producer_consumer_split | - | 1048576 | 7 | -26.6% | -26.2% | +1.0% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-followup | read_read_offset | - | 1048576 | 7 | -24.5% | -18.3% | -1.7% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-followup | read_read_offset | - | 131072 | 7 | -12.1% | -14.7% | +2.6% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-followup | simd_metadata_scalar | - | 131072 | 7 | +19.3% | +15.6% | +0.2% | confirmed_harmful | confirmed_harmful |
| EXP-20261107-R11-followup | simd_reduction | - | 1048576 | 7 | -32.1% | -33.5% | -4.5% | confirmed_profitable | confirmed_profitable |
| EXP-20261107-R11-followup | simd_reduction | - | 8388608 | 7 | -41.1% | -41.9% | +0.7% | confirmed_profitable | confirmed_profitable |

## Historical gaps

- `{'campaign': 'EXP-20261107-R1A', 'case': 'known_vec', 'mode': 'setup', 'n': 10000, 'raw_csv': 'results/r1/EXP-20261107-R1A/known_vec/raw_known_vec_r1a_n10000.csv', 'reason': 'historical runner overwrote mode-specific raw CSV; only the last mode (body) survives'}`
- `{'campaign': 'EXP-20261107-R1A', 'case': 'known_vec', 'mode': 'hot', 'n': 10000, 'raw_csv': 'results/r1/EXP-20261107-R1A/known_vec/raw_known_vec_r1a_n10000.csv', 'reason': 'historical runner overwrote mode-specific raw CSV; only the last mode (body) survives'}`

## Interpretation limits

- Five to nine blocks give coarse intervals; small effects remain provisional.
- The sweep is exploratory; intervals are not multiple-comparison adjusted.
- A/A is a noise gate, not a second treatment.
- Ideal-cache or hardware explanations are not tested here.
