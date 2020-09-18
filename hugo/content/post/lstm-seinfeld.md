---
title: Generating Seinfeld Dialog using Neural Networks
date: "2016-01-29"
author: John P. Lalor
draft: true
slug: lstm-seinfeld
summary: Using LSTM Recurring Neural Networks to Simulate Dialogue from Seinfeld
---

Neural networks are all the rage these days, with a huge number of examples of their capabilities around the web. One particular type is the Long Short-Term Memory Recurring Neural Network (LSTM RNN). I'll leave the explanation of how they work to more qualified people (add links here), but I wanted to show off a particularly interesting application of the technology.

Andrej Karpathy released an LSTM RNN that takes a block of text as input and can generate as output text that follows the patterns found in the input text, one character at a time. He has examples of the network generating Shakespeare, Wikipedia articles, and even LateX and Linux source code. As the system learns, the output it generates looks more and more realistic compared to the input.

Here, I used Andrej's code to simulate some of the most important text out there...dialog from scripts of the TV series Seinfeld!

First, I needed to get my hands on all of the Seinfeld scripts. Luckily, they can be scraped from (website) with minor speedbumps. Once the data is collected, you simply push it all together into one text file, and feed it into the network. As the network reads in characters and learns more about the body of text, it updates its parameters to be more and more likely to appropriately model the text.

Enough technical talk, let's look at the output!

First, we'll look at some of the text generated after only a few passes through the data:

> Bania: Head of next! Hey, really? Then if I can stop it. 
>
> (Elaine looks for back to the one) 
>
> SIDRA: Alright. He's a cop for simple. 
>
> KRAMER: Oh, I got comedian to set out in the gurie. 
>
> SUSAN: Good, right. It got guy an attractive. 
>
> ALL: Hey, So, that's not a brill time. 
>
> HELEN: What did I tell me? 
>
> SUSAN: Hey, Clerk. 
>
> BOOY: Kramer, you're having sevenouse awill. That's not a bag 
p> 
> Kramer Oh, you say about it! You trass me over my way really do you feel wearing anything?  
> She takes Jerry a chim-enthery) 
> The woman resplit it out of the teller bathroom. 
> SUSAN: I thought it was like me. 
> KEN: Nice of her loud! 
> KEN: Is that much like that? 
> HELEN: So now we gotta get back to me, you gotta go perfect people waiting like that. 
> ELAINE: Oh, look for a mud. Amerize you forbid pasta. 
> JERRY: Y'knew. This is a getting, you not. I thought they're having! 
> (broke two sauce flos sascening) and it's just leaving Potalled. 
> ELAINE: What do you mean, they were too staring stranger? 
> JERRY: Take it off. Jerry moves from Ulcituring? I know... (food arm down. He hasn't taken it on this approval) Look, I've met pungs pirrisc at look! I'm still  crazy later.  
> AGER: Okay. 
> Dr. PITT: Four? I'm not family. Laura like a friend for fourse if it spots the click of the movie. 
> KRAMER: Alright. Angry! 
> The Weaper pubous human pomelias weeks the manger makes balcrage from his car. 
> GEORGE: (isimery) Hey, Lucal... I'm here.... 
> GEORGE: You're not stepping Jerry, there was a tanker flight. I created ur I found me. 
> STEINBRENNER: About it!  
> RAY: You find Poppie came anymore? Pichs Merry's showing While. I don't. 
> JERRY: Yeah, and then she doesn't leave, it's Different. You have no spreading 

You can see that the network does a good job of recognizing actual characters from the show, from the major players (Jerry and co.) to less common characters like Bania and (one of my favorites) Steinbrenner. The actual dialog isn't great, but you can see some spots where it makes a little sense. What if we run it some more?

(add more content here)


References:

