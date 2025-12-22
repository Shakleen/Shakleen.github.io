## Problem
As a three-person startup, manual regression testing was slowing down feature deployment and risking production stability.

## Solution
I implemented a micro-repository architecture with a strict CI/CD pipeline that enforced a **90% unit test** coverage floor.

## Result
By blocking merges on any test failure and utilizing Docker for containerized consistency, we maintained a "Green Master" and eliminated deployment-related downtime.
