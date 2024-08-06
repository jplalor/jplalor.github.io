---
title: "What is Hard"
---

Curriculum learning is an interesting area of study within machine learning.
However, it is often applied in a somewhat hand-wavy fashion.
What does it mean for a particular training example to be *harder* than another one? 

Sometimes, sentence length is used to indicate difficulty.
But in the context of movie reviews, "meh" could be positive or negative (in a binary task), while a long tirade against a movie would very obviously be negative. 
Similarly, rarer sentences, phrases are often considered harder. 
But if someone comes up with a unique way of praising your film, that would be an easy one!
Neutrality only has so many expressions.

Difficulty itself as a concept is slippery. 
It could be associated with human or model perception of difficulty, or could relate to a specific aspect of a task. 
It's worth being careful and defining terms when setting up a curriculum learning procedure.
