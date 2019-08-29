Title: IRT with Artificial Crowds
Date: 2019-08-29 15:06
Category: general
Slug: emnlp19
Author: John Lalor
Summary: Because people don't want to label 50,000 sentences

If you have been keeping up with what's going on here my website, you'll know that a lot of my work involves Item Response Theory (IRT).
Typically, IRT requires human *response patterns*, which means that each human has to label each item in your data set so that patterns across the individuals can be comapred when fitting the model.
This limits the size of the data sets that can be used, but even so we've been able to do some interesting work in NLP with IRT models using human data.

This bottleneck leads to an obvious question: can we pull the humans out of this process and instead gather response patterns from an ensemble of models?
The models could act as our *artificial crowd*, and the response patterns could be used to fit IRT models for very large data sets.

To answer the question: you can, and we did.
The results are in our upcoming EMNLP 2019 paper: *Learning Latent Parameters without Human Response Patterns: Item Response Theory with Artificial Crowds.*
This post will serve as a companion to the paper.

# Introduction
As I mentioned above, IRT can be really useful for NLP.
Information such as how difficult certain examples are, and how well a model performs with respect to a population (instead of just raw accuracy) can be used to better evaluate models, build better models, and sample training data.
But a major bottleneck in rolling IRT out has been the fact that IRT requires a lot of human data.
And it requires a lot of human data in two dimensions:

1. For each example in your data set, you need a lot of labels for model-fitting (a few hundred or more)
2. Each human has to label all (or at least most) of the examples in the data set

The first point means that data collection is expensive from a researcher's point of view.
The second point means that the data sets you can work with are somewhat limited in terms of size.
You could ask a human to label a few hundred or a thousand examples from a data set, but they would probably get bored (or angry) and the quality of those annotations would suffer.
So we wanted to see if we could fit IRT models with a crowd of models, since we can get a model to label a huge data set very cheaply.

# Artificial Crowds
There are a number of ways you can construct an ensemble of models.
In this work we focused on *training data manipulation* as the mechanism for building an artificial crowd.
For our two NLP data sets (SNLI and SSTB) we started with a baseline neural network model.
We used a straightforward LSTM model, nothing fancy.
With this baseline model, we ran 1000 training cycles, each time starting with a different subset of the training data set.
We did two manipulations to the training data:

- sample the training set size so that we have some subset of the training data
- flip the label for a randomly selected subset of this sample to introduce noise into training

With this setup each instance of the model is being trained with a very different data set, which will lead to very different results in terms of performance.
Once each of these models were trained we labeled all of the examples in the data set and used these outputs as the response patterns for fitting an IRT model.

# Variational IRT

# Results
In order for all of this model training to be worth our while, there were three questions that we needed to answer:

1. Are the output parameters (reasonably) similar to those learned from a human crowd?
2. Can we fit the IRT models for tens or hundreds of thousands of examples?
3. If we can, who cares? (put another way: What downstream tasks can we use those learned parameters for?)

## Comparing Humans and Machines
The first thing we did was have the artificial crowd label all of the examples that we already had human annotations for from our earlier work.
This way we can compare the learned parameters across the groups to see how well they correlate.

For SNLI, the correlations look like this:

[correlations](figure/snli_scatter.png)

And for SSTB:

[correlations_sstb](figure/sstb_scatter.png)


## Putting it to Use

## Where are the Differences?

# Conclusion

Code for fitting your own IRT models is available [here](https://github.com/jplalor/py-irt).
