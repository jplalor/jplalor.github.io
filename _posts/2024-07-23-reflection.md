---
title: "On Reflection"
---

What is the value of reflection, and how can it be incorporated into AI? 

I think it is very important, as evidenced by the fact that I am on a week-long retreat to do some reflection. 
But how do we encode reflection into an AI model, and should we? 
You could say that the iterative process of learning via gradient descent is a type of reflection.
As a model is re-exposed to the same data over and over again, the internal weights are refined until the overall model state converges to a point. 
But that is a supervised process, where the models update the weights based on their labels. 
Alternatively, something like fine-tuning for reconstruction in an unsupervised setup sets the model up to refine weights based on it's ability to reconstruct the input. 
But again, this process is still technically supervised. 
Instead of the labels, the input itself is the target. 

How would one simulate a scenario where the model simply turns over the input it has seen, makes connections that are not clearly relevant, and pursues them until some new insight is obtained? 
Just as importantly, if someone claimed that their model could do this, how would we evaluate that claim? 
What kind of leaderboard would you need to create to test reflective AI models? 
