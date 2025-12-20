## Problem
PII tokens represent less than 1% of the total dataset, making it difficult for standard models to learn the specific features of sensitive data.

## Solution
1. Generate synthetic dataset using 4 different LLMs.
2. Negative sampling
3. Higher & lower class weight for PII & non-PII class respectively
4. Ensembling of models with weighted prediction

## Result
Successfully balanced the model's sensitivity, preventing the "needle in a haystack" problem common in large-scale text datasets.
