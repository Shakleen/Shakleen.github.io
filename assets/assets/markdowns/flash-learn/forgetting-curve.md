## Problem
Traditional learning lacks the precision to intervene at the exact moment of memory decay.

## Solution
* Recommendation system quizzes users on most likely to forget cards.
* **LLM (Gemma-3)** to judge answer and provide feedback.
* **LLM + RAG** (using Gemma-3 and Pgvector) to suggest content for immediate remedial.

## Result
The system employs "Adjacent Logic" to quiz related card clusters, ensuring the user retains an entire topical mental model rather than isolated facts.
