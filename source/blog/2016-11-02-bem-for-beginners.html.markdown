---
title: BEM-for-Beginners
date: 2016-11-02 02:31 UTC
tags: BEM, CSS, Front-end devlopment
---
<section class="article-container">

<p>When I was first learning HTML and CSS, I was too busy trying to make heads or tails of how it all worked to worry much about things like code maintainability or how quickly someone else would be able to figure out what my code was doing. It was a while before I learned about the various methodologies out there to keep things maintainable, and I had enough experience by the to know my code was messy and confusing. It doesn’t matter if you’re working on a project solo or on a team with dozens of people - keeping your code readable and maintainable is essential.</p>

<p>Having a naming methodology is important for scalability, reusability and readability. A while ago I studied up on three of the most popular conventions: OOCSS, SMACSS, and BEM. I felt that the first two left too much up to the personal style of the person writing the code, and as a young developer, I didn’t have much confidence that they would work for me. I don’t have the years of experience with experimenting and figuring out best practices on my own to make either of those methodologies work for me. BEM, on the other hand, appealed to me because of its strictness. There are only ever going to be three types of styles, and figuring out when to use which on is very straight-forward. After a few months of adhering to the BEM philosophy, I have come to love how simple and maintainable it makes my CSS. I believe that BEM is the perfect method for other front-end beginners.</p>

<p>BEM touts itself as being a good practice for large projects, especially when working with a team and when creating a site that will be maintained by others later, but also works well for small or individual projects. BEM is immediately recognizable, making maintainability easier than some of the other options, which often require the developer to sift through the code to figure out what the conventions are.</p>

<p>BEM stands for Block, Element, and Modifier. Websites can be broken down into meaningful blocks, which are made up of their elements. Modifiers are used to manipulate their states.</p>

<p><strong>Blocks</strong></p>
<p>Blocks are chunks that can stand alone  and are meaningful by themselves, such as headers, footers and sidebars. Each block contains its own set of elements. For example, let’s take a navigation bar that has a few links to different pages. To create a block we would simply give it a class name:</p>

<p><code>.nav { … }</code></p>

<p>Block syntax only allows for a single dash, meaning that if we had two different navigations and were doing all of this twice, we would make two blocks: one called <code>main-nav</code> and one called <code>secondary-nav</code>. So far this is just a regular class - it doesn’t really become BEM until we fill up this block with elements.</p>

<p><strong>Elements</strong></p>
<p>Elements, unlike blocks, don’t have meaning on their own. They are semantically tied to their blocks. To better understand this, let’s go back to the example of a navigation bar. The various links inside of them are elements - let’s say they’re links to pages for “About,” “Team,” and “Blog.” If we saw those words on a page alone, they wouldn’t mean much to us. But once we stick them in their <code>nav</code> block, with its elements side-by-side at the top of the page, we understand that they are links in a navigation. Each of the links in our navigation are an element and would get the class name:</p>

<p><code>nav__item</code></p>

<p>If there was something else in the navigation, like a logo icon, we would name it similarly:</p>

<p><code>nav__icon</code></p>

<p>Elements are always written by first using the name for the block it lives inside, followed by a double underscore and then the name of the element. Remember that BEM helps us make our classes modular, so you want to leave your names vague enough that the styles can be reused elsewhere but not so vague that you have no idea what’s going on. After all, another point of BEM is to be able to quickly figure out what’s going on. For example, I chose the name <code>nav__icon</code> rather than <code>nav__logo</code> because while the icon I add may be the company logo now, what if for some reason we swap it out for something else, like a pumpkin to celebrate Hallowe’en? Then it’s just an icon, and the word “logo” doesn’t fit. That’s a silly example, but the need to have flexible, reusable styles is very real, even with small projects.</p>

<p>The conventions may look a little strange, but it’s worth it to know quickly which category a class falls into. When you follow BEM naming, you’ll immediately understand that a class name like <code>form-table</code> is a block, while <code>form-table__button</code> is an element within that block.</p>

<p><strong>Modifiers</strong></p>
<p>Modifiers do just what you’d think they do - they modify a block or element when you need to make just a slight change. For example:</p>

<script src="https://gist.github.com/epenzeymoog/7b0c89ab927bb5818906057a73b227ce.js"></script>

<p>The fourth line has the name of the element followed by two dashes and the word “current” to show that this is the current page. This is how BEM tells us to write modifiers It may get an additional style or two, but is otherwise the same as the other <code>nav__item</code> elements.</p>

<p><strong>BEM for CSS</strong></p>
<p>A common critique of BEM is that it bloats your HTML, and I have to admit that this is somewhat true. However, the clarity gained from this kind of naming is well worth it. Additionally, BEM helps us get away from nesting our CSS styles, which ultimately makes things much easier to change later, and allows us to reuse our styles.</p>

<p>Before I learned BEM, I might have styles my navigation like so:</p>

<script src="https://gist.github.com/epenzeymoog/3e26b11233b389881cfd126187faa52e.js"></script>

<p>This was ok, but what if I want to reuse the styles I applied to my navigation links to my footer, only my footer has triple the amount of links and I need to give them a different width than what I gave the <code>ul</code>? I’d have to write it all over again. The BEM way makes it much easier to reuse styles. Here’s how I would write my BEM CSS:</p>

<script src="https://gist.github.com/epenzeymoog/cd1bdaad1eabfb83c8676733018200a4.js"></script>

<p>No nesting, no hassle later on when I want to reuse a style. I have the option to give all my footer links the same <code>.nav__item</code> styles without either having to find a complicated work-around to override the style from the main navigation or re-writing them entirely.</p>

<p><strong>BEM for new developers</strong></p>
<p>As someone who’s still on the newer end of writing code for the front-end, I find BEM’s simplicity and strictness appealing. When you’re still getting your bearings on how things work, anything that will make it easier to understand what’s going on is a necessity, and BEM does just that. It feels to write with its rules at first, but it quickly becomes second nature, and you’ll thank yourself the first time you have to make a change to a project you haven’t touched for a few months are are able to quickly find what you’re looking for. At the end of the day, there are lots of options out there, and it’s most important that you find one that suits the needs of you and your team. But if you’re just starting out and looking for a naming methodology that will bring some structure to chaotic code, BEM is a great option.</p>
</section>