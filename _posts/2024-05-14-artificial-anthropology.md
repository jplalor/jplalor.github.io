---
title: "Artificial Anthropology"
---


When a computer science researcher designs a new algorithm, they are often asked to conduct a theoretical analysis.

This typically means an analysis of the computational complexity (*"How slow is it?"*) and space complexity (*"How much memory does it need?"*).
With these analyses, researchers can benchmark future innovations against the prior work, and practitioners can make informed decisions when selecting an algorithm for their use cases. 
We're able to do these types of analyses because the algorithms themselves can be written down and inspected, to determine properties such as complexity, expected outcomes, etc.

Deep learning, and LLMs in particular, don't exactly follow this paradigm. 
They are learned models, which require algorithms for training and inference, but don't exactly play well with traditional algorithmic analyses.
We know they're slow, and we know they take a lot of space, but for the most part *we don't care.*
Of course, there is very good work being done on speeding them up and making them less data-hungry. 
But overall, theoretical analyses of deep learning models/LLMs can be considered an outlier, especially compared to algorithmic analyses that came before. 

However, researchers and practitioners are still interested in what these models can do, and how they do them.
So what has emerged is a sort of *artificial anthropology*, where we observe the behaviors of LLMs and work backwards to generate theories and hypotheses about why and how they do what they do.
The wonderful work on [BERTology](https://direct.mit.edu/tacl/article/doi/10.1162/tacl_a_00349/96482/A-Primer-in-BERTology-What-We-Know-About-How-BERT) fits into this paradigm, as do all of the less-wonderful "Can you believe ChatGPT did this!?!?" headlines that you've read. 

LLMs are still fundamentally artificial phenomena, and should be treated as such. 
Artificial anthropology can tell us *what* these models are doing, but fundamental research into the algorithmic properties of the training and inference algorithms should be the primary tools that tell us *how*. 
