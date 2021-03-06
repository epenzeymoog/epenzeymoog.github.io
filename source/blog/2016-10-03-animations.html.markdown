---
title: animations
date: 2016-10-03 14:45 UTC
tags:
---
<section class="article-container">
<div class="animation">
<p>Animations are a great way to add meaning and delight to any web experience (so long as they are done right).</p>
<p>Because our brains are wired to notice movement, creating moving pieces immediately grabs users' attention. It's important to use animations wisely, as they can easily distract a user from the task you want them to complete.</p>
<p>Done right, animations evoke visual interest, personality and delight.</p>

<h2>The basics of animations</h2>
<p>Animations have two main parts:</p>
<ul>
  <li>keyframes: define the stages and style of the animation</li>
  <li>animation properties: assign the <code>@keyframes</code> to a specific CSS element as well as define how it will be animated.</li>
</ul>

<h3>Keyframes</h3>
<p>Each <code>@keyframes</code> is composed of:</p>
<ul>
  <li>The name of the animation. The name should accurately describe the animation, for example <code>bounceIn</code>.</li>
  <li>The stages of the animation. Each stage is shown with a percentage, with <code>0%</code> being the very beginning of the animation and <code>100%</code> being the very end. We can add various states between the beginning and end.</li>
  <li>Properties defined for each part of the animation's timeline.</li>
</ul>

<h3>Animation Properities</h3>
<ul>
  <li>animation-delay: specifies a delay for the start of an animation.</li>
  <li>animation-direction: specifies whether an animation should play in reverse direction or alternate cycles.</li>
  <li>animation-duration: specifies how many seconds (or milliseconds) an animation takes to complete one cycle.</li>
  <li>animation-fill-mode: specifies a style for the element when the animation is not playing (which would be if it has a delay on it or when it is finished).</li>
  <li>animation-iteration-count: specifies the number of times an animation should be played.</li>
  <li>animation play state: specifies whether the animation is running or paused</li>
  <li>animation-timing-function: specifies the speed curve of the animation.</li>
  <li>animation-name: specifies the name of the <code>@keyframes</code> animation.</li>
</ul>

<h2>Creating an animation</h2>

<div>
  <p>The first step is to write some quick <code>html</code>to create our animation. I'm going to make a bouncing ball that changes colors as it bounces. I'll give it a wrapper to give it the appearance of bouncing within a set space. The wrapper isn't necessary for the animation, I just think it makes things look nicer. I'll also create a <code>div</code> simply called "ball," which I'll put the animation on.</p>
</div>  

<div>
  <script src="https://gist.github.com/epenzeymoog/6ea88c8db7d469bb4655c73610ab7057.js"></script>
</div>

<div>
  <p>The next step is to create the CSS class that contains the actual animation. After that, we use <code>@keyframes</code> to define that animation. For this example, we will create our bouncing ball by stlying the <code>div</code> we named "ball," and also add a style for <code>animation</code>. I'll call our animation "bounce," since it's creating a bouncing ball. You can name the animation whatever you want, but ideally it describes what the animation is doing.</p>
  <p>The <code>animation</code>stlye is also where I'll set it to <code>infinite</code> so that it goes on forever, and <code>1.5s</code> along with <code>ease-in-out</code> to define that each transition will take 1.5 seconds to ease in and out to the next one. 


<div class="right">
  <script src="https://gist.github.com/epenzeymoog/06914a36c64cf15450f136dca2cd49ec.js"></script>
</div>

<div class="left">
  <p>The final step is to define the animation using <code>@keyframes</code>. This animation is pretty simple. I'm going to give it different properties at different points using the percentages 0% (for the beginning), 50% (for halfway through) and 100% (for the end). At 0% the <code>margin-top</code> is <code>9 em</code>, which will push it to the bottom of my wrapper. At 50% it's <code>0 em</code>, which will pull it up to the top. Then at 100% it's once again at <code>9 em</code>, pushing it back down.</p>

  <p>Finally, adding a different color to each of the three stages causes it to change color.</p>
</div>

<div class="right">
  <script src="https://gist.github.com/epenzeymoog/62b919a22f998b833b2bfab07d286b4a.js"></script>
</div>

<div class="wrapper">
  <div class="ball"></div>
</div>
