## Problem
PII tokens represent less than 1% of the total dataset, making it difficult for standard models to learn the specific features of sensitive data.

## Solution
I implemented specialized training techniques including negative undersampling and adaptive thresholding to force the model to focus on rare PII tokens.

## Result
Successfully balanced the model's sensitivity, preventing the "needle in a haystack" problem common in large-scale text datasets.
