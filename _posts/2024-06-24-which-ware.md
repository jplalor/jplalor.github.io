---
title: "Which -Ware?"
---

What kind of *-ware* company is NVIDIA? 

Well, they build the GPU chips powering the current AI craze, so *hardware,* right?
However, they are not the only game in town when it comes to GPU production.
But, they have CUDA.
What's CUDA? 
CUDA is software.
Specifically, software for running programs on GPUs.[^1]
CUDA is what enables the training and running of state-of-the-art AI models on NVIDIA GPUs. 
Without CUDA, there is no NVIDIA boom. 
So maybe NVIDIA is a *software* company?

However again, they are not the only game in town when it comes to software for running general purpose code on GPUs. 
AMD (who also make GPU chips) have similar software, ROCm, to facilitate training AI on AMD GPU chips.[^2]
But ROCm is behind the eight ball. 
AMD has been playing catchup on getting ROCm adopted. 

To catch up with NVIDIA, should AMD:

<style type="text/css">
    ol { list-style-type: upper-alpha; }
</style>

1.  spend, spend, spend on GPUs to offer the ability to train bigger and bigger models?
2.  spend, spend, spend on making ROCm the easiest-to-use software ever invented?
3.  roll over?

I'd argue that you need a and b, but without b, a will get you very little. 
Because people won't be able to use your big bad GPUs if ROCm doesn't work. 
If you just focus on b, ROCm adoption eats into NVIDIA's dominance.

So even though this looks like a *hardware* fight for AI, there is a more important *software* fight under the hood.

[^1]: To be specific, CUDA is an API to facilitate general computing on GPUs. 
[^2]: SO. MANY. ACRONYMS.


