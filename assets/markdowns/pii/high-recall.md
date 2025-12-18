## Problem
In educational datasets, failing to detect a single piece of Personally Identifiable Information (PII) is a critical security failure, requiring a system that prioritizes recall over precision.
## Solution
I engineered a token-classification pipeline using an ensemble of DeBERTa models to detect seven categories of PII (Names, Addresses, IDs, etc.) across student essays.
## Result
Achieved a highly competitive F5 Score of 0.96, prioritizing the detection of nearly all PII instances to ensure total data anonymization.
