## Problem
Client (IDLC) struggled to process large volume of various bank statements for credit risk modeling.

## Solution
1. **Tesseract** for identifying and extracting text.
2. Custom **PyTorch** model for parsing extracted text to appropriate field.
3. Human-in-the-loop verifies model output and continual learning improves model overtime.

## Result
* **Tesseract** with custom preprocessing: <3% character error rate
* Parser model: 99% document classification and 82% field level accuracy.
