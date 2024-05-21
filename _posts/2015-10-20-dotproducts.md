---
title: Dot Products and Vector Projections
---

Every once in a while I'm going to write a post about something I learned in my Machine Learning course here at UMass. I'd like to do one post per lecture, but I'm late out of the gate, so it might be less frequent. These posts aren't intended to be thorough explanations of particular topics, but instead will be relatively high-level overviews, with a simple example to illustrate the concept. That's the plan anyway. Comments or corrections are welcome and encouraged.

This post is about dot products and projections, mostly because they're really useful and came up early in lecture. The projection of a vector from one space to another can be very useful when trying to reduce the dimensionality of a set of vectors.

Ok, quick pause for some background. What does that all mean?

One way of thinking about data is as a collection of vectors. For example, if you are looking at a dataset where each entry is the height and weight of an individual, one of your vectors would look like this:

$$v_a: \{70, 180\}$$

Where $v_{a1}$ is individual a's height in inches and $v_{a2}$ is individual a's weight in pounds. This vector has a dimensionality of 2.

Not all datasets will have dimensionality of 2. Many will have much higher dimensionality, which can make working with them difficult. One way of making life easier is attempting to take your high dimensional data and *project* it onto a lower dimensional vector. In order to do this, we need to talk about dot products.

Algebraically, the dot product of two vectors is the sum of the product of each pair of values in the vectors. So you take each pair of values from the two vectors, multiply them together, and add up all of those products.

$$A\cdot B = \sum_{i=1}^n A_iB_i$$

Knowing how to calculate a dot product, we can now project one vector onto another. In order to project vector B onto vector A, we take the dot product of B and A, and divide by the magnitude of A, which is really the square root of the dot product of A with itself, $\lvert\lvert A \rvert\rvert = \sqrt{A\cdot A}$

$$comp_ab = \frac{A\cdot B}{\lvert\lvert A \rvert\rvert}$$

This will give a scalar value, which is called the component or scalar projection of B in the A direction. You can think of it as the length of the projection of vector B. To turn this into a vector projection, we multiply it by the unit vector for A: $\frac{A}{\lvert\lvert A\rvert\rvert}$. The formula for the projection is therefore:

$$proj_BA = \frac{A\cdot B}{\lvert\lvert A \rvert\rvert}\frac{A}{\lvert\lvert A\rvert\rvert}$$

Let's look at an example to see how this all works. Consider two vectors:

$$A = \{2, 4, 6\}$$

$$B = \{10, 11, 12\}$$

Let's project B onto A. First, we'll calculate the scalar projection:

$$comp_AB = \frac{A\cdot B}{\lvert\lvert A\rvert\rvert}$$

$$ = \frac{2 * 10 + 4 * 11 + 6 * 12}{\sqrt{2 * 2 + 4 * 4 + 6 * 6}} = 18.174$$

So our scalar projection is 18.174. Now, we take that and multiply it by the A unit vector:

$$proj_AB = \frac{A\cdot B}{\lvert\lvert A \rvert\rvert}\frac{A}{\lvert\lvert A\rvert\rvert}$$

$$ = 18.174\frac{A}{\lvert\lvert A\rvert\rvert} = \{4.8571, 9.7143, 14.5714\}$$

The result is the vector B *projected* onto vector a.

So there you have it. Dot products and projections. As you might have noticed, the vectors involved above were of the same length. But I thought we were going to project to lower dimensions? We will, we will. In order to do that we have to identify *basis vectors* that identify the dimensions that we want to project to. That is a topic for a later post.

References:

<http://math.oregonstate.edu/home/programs/undergrad/CalculusQuestStudyGuides/vcalc/dotprod/dotprod.html>

<https://en.wikipedia.org/wiki/Vector_projection>

<http://mathworld.wolfram.com/DotProduct.html>
