---
title: Using Bourbon and Neat
date: 2016-09-29 23:18 UTC
tags: Design, Front-end development, Layout, Mobile Design, Responsiveness
---
<section class="article-container">
<p>Bourbon is a mixin library for Sass.</p>

<p>Sass gives us the ability to keep our styles in cleanly separated files and write those styles with the help of variables that we define in yet another file. We use @import to import the files to each other and build on top of them. They are all imported into a single file made up of nothing but imports - this is our main Sass file. Sass uses it’s magic (the watch command, which is explained later) to compile the contents of this main Sass file (which are the contents of all the other files it’s lined to) to a single CSS file that the browser uses to get styles from. Sass saves us from the messiness of a long CSS file. It does all the work for us.</p>

<p>Sass mixing are blocks of code that we define once and then re-use in other places. If you’ve ever learned a programming language, you can think of these the same as functions or methods. Mixing can take multiple parameters/arguments.</p>

<p>For example, in my project I am going to have a few different headlines with different styles for color and font size. So I create a mixin called “headline” and give it the arguments of $color and$size:</p>

<code>
@mixin headline ($color, $size) {
</code>
<code>
  color: $color;
</code>
<code>
  font-size: $size;
</code>
}
</code>

<p> With this mixin, we are preparing whatever we apply it to to be ready to catch a color and font-size, which we will define as arguments when we need to. When I want to use this for one of my headline styles, for example an h2 that I want to be 18px and red, I would write:</p>

<code>
h2 {
  @include headline(red, 18px);
}
</code>

<p>Now my h2 will have color: red and font-size: 18px. Sass will compile this to:</p>

<code>
h1 {
  color: green;   
  font-size: 12px;
}
</code>

<p>You can also pass a variable as an argument. If you defined a variable $base-color: pink; then you could have written:</p>

<code>
h2 {
  @include headline ($base-color, 18px)
}
</code>

<p>Let’s get back to Bourbon. Like I said earlier, Bourbon is a mixin library for Sass. Some people at thoughtbot decided it would be a good idea to centralize some of the most useful mixins so that we’re not all reinventing the wheel in slightly different ways all the time. The actual mixins are really useful, and once you’re finished setting it all up, go through each item to check out what it does.</p>

<p>Once you have Bourbon you can get Neat. Neat is a cool little grid framework that makes layout and positioning - the cause most designers’ eternal headache - much easier. It’s super responsive, clean and lightweight.</p>

<p>Here’s how to get it all up and running:</p>

<p>If you’ve never used Sass before, you'll have to install that first. If you’re not sure, run the following command in your terminal:</p>
<code>$ sass -v</code>

<p>If you have Sass, you’ll get “Sass 3.4.22 (Selective Steve)” or something similar. 
If you don’t have Sass, install by going to your home directory and entering:</p>
<code>$ gem install sass</code>

<p>Sass has a handy feature that allows it to be constantly watching for changes in your sass files and compiling them to your css file. You’ll want to use your main Sass file for this, which you will use to import all the other styles you’ve written with Sass, as well as your variables file. This file is essentially one long list of @import “_variables” and so on. To set up the watch for changes, cd into your stylesheets directory and run:</p>
<code>$sass - - watch input.scss:output.css</code>

<p>Replacing “input” and “output” with your own file names. This is telling Sass to watch your scss file (where you are inputting styles) and output it your css file.</p>

<p>In the project’s directory, install Bourbon using RubyGems:</p>
<code>$ gem install bourbon</code>

<p>2. Change directories into the project’s stylesheets directory and use the following command to generate the bourbon folder full of cool things:</p>
<code>$ bourbon install</code>

<p>3. Open up your main stylesheet. If you’ve used Sass before, you know this as the main stylesheet that has all of your @import code where you’re important your various styles. At the very top of this document add @import “bourbon/bourbon” . It will have to be at the very top, before all the other @import s. </p>

<p>Now you can install Neat. Back in your project directory in terminal, write:</p>
<code>$ gem install neat</code>

<p>cd into your Sass stylesheets directory. Now write:</p>
<code>$ neat install</code>

<p>Now you’re up and running with Bourbon and Neat! There are tons of things in those directories that you can use to structure your project. Don't forget that the main SCSS file that SASS compiles to the main CSS file is nothing but <code>@import</code> tags. Go through them and figure out what you want to use, and delete things you definitely don’t.</p>

</section>