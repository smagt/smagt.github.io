---
blog: true
title: readable paper writing
number headings: auto
layout: post
date: 2024-07-30 22:06:21 +0200
---
  
_This is the less technical counterpart of a living text on writing articles in LaTeX at [https://github.com/smagt/LaTeX/blob/master/writingPapersInLaTeX.pdf](https://github.com/smagt/LaTeX/blob/master/writingPapersInLaTeX.pdf)_.  
  
# 1 technical writing  
  
I am not a writer.  I don't know how to write well. Indeed, I'm not very good at it.  But... I can read.  I often notice things that are done wrong.  Often my opinion, but anyway: Here I want to point out some of these _opinions_.  
  
In this, of course, I am only talking about technical writing.  Textbooks, or papers, or such.  I don't know anything about writing literature.  I know a bit about reading literature, but _not_ about writing.  I tell you, I tried, and realised I am also not good at that. Even worse.  
  
Anyway, let's get on with it.  
  
# 2 getting an idea across  
  
Now I figure as follows.  Assume you want to tell something to someone.  You want share your thoughts with your readers.  A new idea, ideally.  Or a new insight.  Or maybe something you got to work.  Or whatever.  
  
And in many cases that insight, that idea, is not trivial.  It may even be complex.  Now here is a fallacy: you probably don't think it's complex; because you got used to it, and you know its context.  
  
But your reader may not know your precise context.  On all the unwritten, 'obvious' things around your idea that make it work and make it make sense.  They are in your head, not in your text file.   
  
So your first principle -- and the main thing I learned from Andy Tanenbaum -- is the KiSS principle: _keep it simple, stupid_.  (The second was, never touch a running system; but that's another story.)  
  
Let me dissect this.  
  
## 2.1 your first KiSS: structure  
First, you want to keep your topic simple.  And that being kind of impossible, then at least keep its description simple.  
  
Personally I like the following approach. First, give a general introduction of what you're trying to do, like a problem you're trying to solve, and what principles you use to do that.    
  
_This paper addresses the problem of gravity, and how it can be circumvented. In it, we analyse the cause of gravity and which physical principles are needed to alleviate the perceived forces. Our method leads to the construction of a Gravitor, a theoretical device designed to nullify gravitational forces in a controlled environment. This concept relies on an in-depth understanding of general relativity, quantum mechanics, and advanced materials science._  
  
Next, go  you first give a short, somewhat more formal description of the problem.  
  
_We look into the fundamental nature of gravity, exploring its manifestation as described by Einstein's theory of general relativity [1]. We discuss the curvature of spacetime and how massive objects influence this curvature, resulting in what is perceived as gravitational attraction [2]. By examining the mathematical underpinnings of these theories [3.4,5], we identify the key variables [7,8,9] that contribute to gravitational force._  
  
Next, shortly describe how the problem is going to be tackled.  
  
_Next, we explore various theoretical frameworks and physical principles to counteract gravity. This includes the analysis of gravitons, particles which mediate the force of gravity in quantum field theory. We also consider the implications of negative mass and exotic matter, which have opposite to those of ordinary matter and could generate repulsive gravitational effects._  
  
Finally, go for the kill:  
  
_We develop models to simulate the behaviour of gravitational fields in the presence of various counteracting forces and materials, forming the basis for constructing a Gravitor. Using novel materials with the right electromagnetic and structural properties, we can interact with gravitational fields leading to the attenuation or redirection of gravitational forces. Our experiments involve precise measurements of gravitational interactions and the effects of our prototypes on these interactions._  
  
Done.  But there's a second issue:  
  
## 2.2 your second KiSS: language  
Secondly, use oblique language. Better put: use open language.  Don't use abstract terminology if you don't need it.  Keep it simple, stupid.  
  
There are a few ways of writing obliquely.  It's choosing simple, common words.  It's using simple, short sentences.  And it's using the kind types of words.  Let's look at each of these.  
  
### 2.2.1 avoid utilising these words...  
except where needed.  
  
When writing technical or scientific texts, there is a tendency to use words that make language more precise.  But it really makes it look stilted.  Difficult to read.  It almost always makes sense to use the simpler, more colloquial version of the word.  Here are some examples, but of course the list is incomplete:  
  
<html lang="en">  
<head>  
    <meta charset="UTF-8">  
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <title>Word Alternatives</title>  
    <style>  
        body {  
            font-family: Arial, sans-serif;  
            margin: 20px;  
        }  
        table {  
            width: 100%;  
            border-collapse: collapse;  
            margin-bottom: 20px;  
        }  
        th, td {  
            border: 1px solid #ddd;  
            padding: 8px;  
            text-align: left;  
        }  
        th {  
            background-color: #f2f2f2;  
        }  
        tr:hover {  
            background-color: #f5f5f5;  
        }  
    </style>  
</head>  
<body>  
  
<h2>Word Alternatives</h2>  
  
<table>  
    <thead>  
        <tr>  
            <th>Rather than...</th>  
            <th>Say:</th>  
        </tr>  
    </thead>  
    <tbody>  
        <tr>  
            <td>approximately</td>  
            <td>about</td>  
        </tr>  
        <tr>  
            <td>prior to</td>  
            <td>before</td>  
        </tr>  
        <tr>  
            <td>implement</td>  
            <td>carry out; start</td>  
        </tr>  
        <tr>  
            <td>terminate</td>  
            <td>end</td>  
        </tr>  
        <tr>  
            <td>ascertain</td>  
            <td>find out</td>  
        </tr>  
        <tr>  
            <td>acquire</td>  
            <td>get</td>  
        </tr>  
        <tr>  
            <td>facilitate</td>  
            <td>help</td>  
        </tr>  
        <tr>  
            <td>subsequently</td>  
            <td>later; after</td>  
        </tr>  
        <tr>  
            <td>require</td>  
            <td>need</td>  
        </tr>  
        <tr>  
            <td>demonstrate</td>  
            <td>show</td>  
        </tr>  
        <tr>  
            <td>utilise, employ, deploy, leverage</td>  
            <td>use</td>  
        </tr>  
    </tbody>  
</table>  
  
</body>  
</html>  
  
You get the idea.  The list is much longer, of course: using 'normal' words really makes your text more readable.  And helps your reader.  
  
So the title of this section?  Should have been, 'Don't use these words'.  
  
#### 2.2.1.1 but...  
Ah, the 'except where needed'?  Well.  There's no such thing as a synonym.  Many words have similar meanings in the same context, but it's very rare for words to mean exactly the same in all their meanings.  Take 'utilise'.  Use use if you can use use.  The meaning of 'utilise' is stronger.  Looking at dictionary definitions:  
- Oxford: make practical and effective use of  
- Cambridge: to use something in an effective way  
- Collins: to make practical or worthwhile use of (and they add the clarification: If you utilise something, you use it.  Note that that is not bidirectional!)  
- Merriam-Webster: turn to practical use or account  
  
So, one may claim that 'utilise' is stronger than 'use'.  Like, really go for it!  Exploit it.  Personally, I think these cases are really rare. And if you want to decide for yourself, consider yourself a _reader_ rather than a _writer_ and see if 'use' could be used instead.  If it can, go for it.  
  
### 2.2.2 avoid the irritating use of superfluous, useless words  
Then, there is a tendency to add adjectives and adverbs which do not improve things.  Take this example:  
- before: _In the framework of hand prosthetics, one usually operates the distinction between passive and active hand prostheses._  
  
I'm happy that's a long time ago.  I need three goes to understand its meaning.  And after getting it, I would now reformulate it as follows:  
- after: _There are two main types of hand prostheses: passive and active._  
  
I got rid of 'the framework', 'usually', 'operates', 'distinction'.  And then what remained was simplified.  
  
Here's another example:  
- before: _In modern data analysis probabilistic graphical models have emerged as a powerful and intuitive tool to capture and reveal hidden structures present in the data._  
  
A bit of a monstrosity, with many needless words: 'modern', 'powerful', 'intuitive'... a lot of simplification is possible.  What about this simplification:  
- after: _Probabilistic graphical models can reveal hidden structures present in data._  
  
Though I still don't like the word 'present' here.  
  
Third example:  
- before: _Advanced data analysis and visualization methodologies have played an important role in making surface electromyography both a valuable diagnostic methodology of neuromuscular disorders and a robust brain-machine interface, usable as a simple interface for prosthesis control, arm movement analysis, stiffness control, gait analysis, etc._  
  
This sentence is too long, contains many superfluous words, and says very little.   I would, if I had to write that paper again, now write it as, for instance,  
- after: _Surface EMG is often used to diagnose neuromuscular disorders as well as brain-machine interface._  
  
And a last one, to improve readability:  
- before: _in $E=mc^2$ where $E$ denotes energy, $m$ is mass and $c$ is the speed of light_   
- after: _in $E=mc^2$ with energy $E$, mass $m$ and speed of light $c$_  
  
And this section's title?  Perhaps it should better be: 'Avoid useless words'.  
  
### 2.2.3 prefer verbs instead of nouns  
But there's another type of writing which decreases readability / makes things harder to read.  This is when sentences contain nouns where verbs could be used.  An example:  
  
_We conducted an **evaluation** of the robotic system's capabilities. The assessment included a measurement of the system's precision and an **examination** of its response times. After the **implementation** of the new algorithms, there was a significant **enhancement** in performance._  
  
but by replacing some of these nouns with their verb form, readability improves enormously:  
  
_We **evaluated** the robotic system's capabilities. We measured the system's precision and **examined** its response times. After **implementing** the new algorithms, the performance **improved** significantly._  
  
We also saved 14 words from the original 39.  
  
Here's yet another beautiful example::   
- rather than write _This is an example of property X …_   
- you'd better write _This example shows property X…_  
  
Rather than 'shows' you can also use words like 'demonstrates' or even 'exhibits', but I prefer the simpler one.  
  
### 2.2.4 tools  
There are many tools out there helping you with writing style.  Many of them are good.  Still, developing your own style pays off for two reasons: first, you can give your papers a personal touch, rather than a style which is the same for everyone . Second, writing becomes easier, more natural, as time progresses.  
  
# 3 writing abstracts  
Let's put the all of above into action.  And I like doing that for abstracts.  Because I don't know what's wrong, but there's hardly an abstract which I can understand at first reading.   
  
Here is an example abstract:  
_This work addresses continual learning for non-stationary data, using Bayesian neural networks and memory-based online variational Bayes. We represent the posterior approximation of the network weights by a diagonal Gaussian distribution and a complementary memory of raw data. This raw data corresponds to likelihood terms that cannot be well approximated by the Gaussian. We introduce a novel method for sequentially updating both components of the posterior approximation. Furthermore, we propose Bayesian forgetting and a Gaussian diffusion process for adapting to non-stationary data. The experimental results show that our update method improves on existing approaches for streaming data. Additionally, the adaptation methods lead to better predictive performance for non-stationary data._  
  
Taking it apart, sentence by sentence:  
1) _This work addresses continual learning for non-stationary data, using Bayesian neural networks and memory-based online variational Bayes._ One may differ here, but I don't like to start so impersonal, 'This work addresses'.  And one may suggest it uses unnecessarily complex terms: 'non-stationary' rather than 'changing'. Does the 'memory-based' add anything to its understanding?  Suggestion: _We address continual learning using Bayesian neural networks and variational Bayes_.  
2) _We represent the posterior approximation of the network weights by a diagonal Gaussian distribution and a complementary memory of raw data._ What is 'complementary memory'? Here, also, using a noun rather than a verb.  
3) _This raw data corresponds to likelihood terms that cannot be well approximated by the Gaussian._ Naturally, 'this... data' is wrong, but has become common. The whole sentence is ~~convolved~~ difficult to read, for that matter.  
4) _We introduce a novel method for sequentially updating both components of the posterior approximation._: the word 'novel' is tautologous with 'we introduce'.  The 'sequentially' does not add to the sentence's (?) understanding.   
5) _Furthermore, we propose Bayesian forgetting and a Gaussian diffusion process for adapting to non-stationary data._ Not much to complain here, but it *does* sound a bit like name dropping.  
6) _The experimental results show that our update method improves on existing approaches for streaming data._ A totally superfluous sentence.  If it didn't, no paper would be published. Instead, the authors probably wanted to say that the method was validated.  
7) _Additionally, the adaptation methods lead to better predictive performance for non-stationary data._ A bit like the previous sentence.  
  
What about the whole section? Back to the previous argument: describe problem; describe solution; describe results. Do the above 7 sentences do so?  
  
_We address continual learning using Bayesian neural networks and variational Bayes. We approximate the posterior of the network weights by a diagonal Gaussian distribution and a complementary memory of raw data. Our method sequentially updates both components of the posterior approximation. Then we propose Bayesian forgetting and a Gaussian diffusion process for adapting to non-stationary data.  Experiments validate the improved results on streaming data as well as better predictive performance for non-stationary data._  
  
You can also ask your favourite LLM to simplify things for you.  I did so, and got  
_This study focuses on continual learning with changing data using Bayesian neural networks and an online memory-based approach. We represent the network weights with a simple Gaussian distribution and use raw data memory for parts the Gaussian can't capture. We introduce a new method to update both parts step-by-step. Additionally, we propose Bayesian forgetting and Gaussian diffusion to adapt to changing data. Our experiments show that our method outperforms current approaches for streaming data and improves predictions as data changes over time._  
  
I'm not sure which version is better.