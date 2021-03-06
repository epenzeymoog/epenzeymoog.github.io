---
title: CSS Architecture
date: 2016-09-30 14:29 UTC
tags: CSS, BEM, OOCSS, SMACSS, Front-end devlopment
---

<section class="article-container">
<p>Writing styles for a simple webpage with CSS is easy, but with larger projects comes a lot more CSS, with the result that we need a way to organize it all. CSS by itself doesn’t tell us how to structure our work, and the pit of specificity is bottomless. If you’re like me, you’ve hit the point of feeling overwhelmed with how much CSS you have, and searched for best practices to organize it, only to have the various blogs and help forums tell you “it depends.” The way you should do a lot of things with CSS depends on the project. It’s something that you’ll figure out with experience on diverse projects and lots of research and trial and error. But if you’re a newer designer looking for help with project you have to do right now, this answer is far from helpful. This article will give an overview of a few ways to organize your CSS, and try to give some direction around the sorts of projects the methods work for. But at the end of the day, you’re going to have to just choose the one that seems best and start working. Maybe you’ll realize a different way will be better, and completely rewrite your styles, but more than likely you’ll get something up and out the door and know better for next time. First, this article will describe a way to organize your design elements before you even get into code (atomic design). Next comes three ways you can go about organizing your CSS:</p>

<ul>
	<li>Option 1: Scalable and Modular Architecture for CSS (SMACCS)</li>

  <li>Option 2: Block Element Modifier</li>

  <li>Option 3: Object Oriented CSS (OOCSS)</li>
</ul>

<p>All three are focused on breaking down our CSS into chunks that we can reuse later, with an eye for simple code that’s easily reusable and possible for future developers to understand maintain.</p>

<h2>Atomic Design</h2>
<p>Brad Frost, creator of the idea of atomic design, drew inspiration from chemistry when organizing his CSS. Just as all matter is made up of atoms, all interfaces are made up of smaller components. Atomic design focuses on breaking down the overall interface of a website into fundamental building blocks and then working up from there.</p> 

<p>There are five levels in atomic design: atoms, molecules, organisms, templates and pages.</p>

<h4>Atoms</h4>
<p>Atoms are the smallest level, basic building blocks of a website: HTML tags. Examples include a header, form input, or button tag. Frost also includes more abstract things like color pallets and animations as atoms.</p>

<h4>Molecules</h4>
<p>Individual atoms aren’t much use to us on their own, but put them together and you start to get something more meaningful: molecules. Molecules are groups of atoms working together to make something new. For example, a header, input and button each on their own don’t mean much, but put them together and we get something new: a form. The header gives the form a name and meaning (like “Sign up for our email list!”), the input field allows the user to type in their email, and a button with the word “submit” on it allows the user to submit their email address to some other place where the result will be the user receiving an email from a company. This form is a “molecule.”</p>

<h4>Organisms</h4>
<p>Organisms are combinations of molecules. Examples include a masthead that might have a logo or title, primary navigation, search form, login form and social media icons. While a masthead organism would be pretty unique, you can also have reusable organisms, such as a product page or employee bio section. The idea here, much like with molecules, is that the elements you’re creating are standalone, portable and reusable.</p>

<h4>Templates</h4>
<p>Templates are combinations of organisms, and show the context they live within. Templates are the first stages of bringing all the disparate elements together to see how things will actually live together on a page. They’re usually low-fidelity wireframes.</p>

<h4>Pages</h4>
<p>Pages are specific instances of templates that include real content, such as an actual image of a mountain where before there was a wireframe image placeholder. Pages are high-fidelity and are also the place where designers can test different variables. For example, a designer should have a page that shows what one product in a cart looks like as well as 20 products in a cart and a short or long headline.</p>

<h4>Bringing Atomic Design All Together</h4>
<p>Atomic design is all about assembling the different pieces, starting with atoms, rather than starting with a page and then deconstructing the elements. Being intentional with how the little details (atoms) look and feel, and how they work together (molecules) helps us be more intentional designers. It also allows us to define each separate element of a page so that we know exactly what to do when we need to use that element later in a different page. Designing this way helps us work faster because we can easily reuse elements.</p>

<p>Frost has <a href="http://demo.patternlab.io/">this example</a> of a website’s atomic design. The top navigation allows you to click through every conceivable type of atom, from the fonts and color to the footer logo link, pagination styles and error messages, and also see his designs for combining these into molecules, then organisms, templates and pages.</p>

<h4>When Should I Use This?</h4>
<p>Atomic Design is a great way to get organized when you’re starting the overwhelming project of a medium or large scale site’s design. It’s clearly great for organizing the elements of any design project, but with medium or large websites, using an organization method like this to keep it all straight - and design each and every little thing with intentionality - is of utmost importance. My verdict is: this is a “nice to have” for small projects with fewer elements, and is essential when working on a medium or large project.</p>

<h3>CSS Architecture</h3>
<p>Now that we’ve covered a great way to organize your designs, let’s talk about how to organize your HTML and CSS as you bring your designs to life.</p>

<h2>Option 1: Block Element Modifier (BEM)</h2>
<p>BEM is, first and foremost, a naming convention. It’s aim is to make front-end code simpler to understand and easier to scale. It touts itself as being a good practice for large projects, especially when working with a team and when creating a site that will be maintained by others later. Updating legacy code is easier with BEM. It claims to have recognizable terminology, making it less confusing than SMACSS, while still giving the solid architecture of OOCSS.</p>

<p>BEM stands for Block, Element, and Modifier. These are the key elements of the BEM methodology. An element is the smallest piece, and together make up a block. Elements have no meaning on their own and are semantically tied to their blocks. Blocks are a combination of elements that can stand alone and are meaningful by themselves. (Blocks do not have to contain any elements at all) For example, a menu: the various menu items are elements. An example is menu items “About,” “Team,” and “Blog.” If we just saw these words on the page on their own, they wouldn’t mean much to us. But put them together in a row on the top of the page with a box around them, and they become a menu block. We know what the menu is and suddenly now we understand what to expect when we click “About.” Modifiers are flags on blocks or elements. They are there to change appearance or behavior, for example, a form that is give a “big” size. The “big” has modified the block “form,” which is made up of a bunch of “input” elements. (Since elements are the smaller items that make up blocks, it would be clearer to call BEM EBM, but that doesn’t flow as well - just remember that elements are smallest, and blocks are combinations of elements. Modifiers do something else entirely; modify an element or block.)</p>

<p>Examples of elements: menu item, list item, checkbox caption, and header title. These are tied to their blocks for meaning. A list item can’t really exist on its own; it needs the meaning of the item blocks to make any sense.</p>

<p>Examples of blocks: header, container, menu, checkbox, input</p>

<p>Examples of modifiers: disabled, checked, size big, color red. “Disabled” might be modifying a function, and “color red” is modifying something to be red. This term will be familiar to grammar nerds and linguistic enthusiasts, who know that and adjective modifies a noun, and nothing but the term “modify” is correct.</p>

<h4>Naming</h4>
<p>BEM is essentially a very rigorous naming methodology, with strict rules for naming elements, blocks and modifiers. BEM avoids inheritance by using unique CSS classes for every element and block. There’s no specifying that a certain <code>div</code> within a <code>p</code> gets certain styles - you have to give that <code>div</code> its own special name and then style that name in CSS. This might be a bit more work upfront, especially for your first project using BEM, but it only take a little bit of foresight to see that this naming method will make it very easy to find what you’re looking for later on. The main complaint with this is that all these class names bloat your HTML, but in the end it’s worth it for what it saves you in space in your CSS.</p>

<h4>Naming Elements</h4>
<p>Remember that elements are the parts that make up a block, meaning that elements are semantically tied to their blocks. When naming elements, one may use letters, numbers, dashes and underscores. A CSS class is formed as the block’s name plus two underscores plus the element name. If the block name is .block , the element name is: .block__elem . For example, using a block class .block and element class .block__elem :</p>

 
<div class=“block”>
	<span class=“block__elem”></span>
</div>

<p>When styling our element in CSS, BEM tells us to only use the class name, not to use tag names or ids, and to make sure that the element isn’t dependent on other elements or blocks on a page. This means that this is acceptable:</p>

.block__elem { color: red; }

While both of these are not acceptable:

.block .block__elem { color: red; }
div.block__elem {color: red; } 


<h4>Naming Blocks</h4>
<p>Blocks are semantically equal, with no precedence or hierarchy. Block names can have letters, numbers and dashes. Any DOM node can be a block if it can accept a class name. In case you’re unfamiliar, the DOM, or Document Object Model, is what defines the logical structure of our code documents. Using the DOM, anything in our HTML document can be accessed, changed, deleted, or added. To simplify things, we can just think of DOM nodes as different HTML elements. Certain HTML elements can accept a class name, like p, h1, div, etc. Some cannot, like i, which makes something italic. Any HTML element that can accept a class is a block.</p>

<p>To name a CSS class with BEM, a short prefix is used, such as .block. When we give that class styles with CSS, BEM specifies that we only use the class name, don’t use tag names or ids, and that blocks don’t depend on other blocks or elements for styling; they need to be independent.</p>

<h4>Naming Modifiers</h4>
<p>Modifiers, which change (modify) appearance, behavior or state, can have letters, numbers, dashes and underscores. A CSS class is forma with the block or element’s name plus two dashes, for example .block- -mod or .block__elem- -mod. Once again, when creating modifier’s CSS styles, nesting is not allowed. The BEM documentation gives the following example for a form:</p>

HTML:
The form class is called "form form--theme-xmas form--simple" and the input type is called "form__input". The submit button is given another class name to show the state: "form__submit form__submit--disabled".

<p>CSS:</p>

<p>.form { }</p>
<p>.form--theme-xmas { }</p>
<p>.form--simple { }</p>
<p>.form__input { }</p>
<p>.form__submit { }</p>
<p>.form__submit--disabled { }</p>

<h4>When Should I Use This?</h4>
<p>BEM gives your CSS classes names that aid in transparency and and meaning to outside developers. This makes BEM ideal for projects that might last a while and/or will be maintained by other people. Also, if you have a large project, BEM naming can do wonders at keeping everything organized. https://www.smashingmagazine.com/2014/07/bem-methodology-for-small-projects/ This developer took BEM to a startup team, to test if it would work for smaller projects, and wrote a convincing argument for using it for small projects as well.</p>

<h4>Scalable and Modular Architecture for CSS (SMACSS)</h4>
<p>Scalable and Modular Architecture for CSS, SMACSS for short (pronounced “smacks” when said out loud), was developed by designer/developer Jonathan Snook. SMACSS is all about categorization. Unlike the strictness found with BEM, SMACSS is more of a style guide that helps you examine your process in a meaningful way and make decisions in your CSS that will lead to sustainable code. SMACSS defines five types of categories:</p>
<ul>
  <li>Base</li>
  <li>Layout</li>
  <li>Module</li>
  <li>State</li>
  <li>Theme</li>
</ul>
<p>The purpose of using categories is to identify things that repeat themselves and codify them. This repetition results in less code that is more easy to maintain and delivers greater consistency.</p>

<h4>Base Rules</h4>
<p>Base rules are the defaults. They’re usually single element selectors. They can also include attribute selectors, pseudo-class selectors, child selectors or sibling selectors. A base style tells us that wherever this element is on the page, it should look like this. For example:</p>

<p>html, body, form { margin: 0; padding: 0; }</p>
<p>input[type=text] { border: 1px solid white; }</p>
<p>a { color: cyan; }</p>
<p>a:hover { color: pink; }</p>

<h4>Module Rules</h4>
<p>Modules are the reusable, modular parts of a page’s design. For example, modules can be a sidebar section and product list.</p>

<h4>Layout Rules</h4>
<p>Layout rules hold one more more modules together. Layout rules divide the page into sections.</p>

<h4>State Rules</h4>
<p>State rules describe how a module or layout looks when in a certain state. For example, an element on a page could hidden or expanded, and a feature could be active or inactive. State rules describe how the module or layout will look when in a particular state. Other examples include how a module might look in different views, such a module that’s on the home page or on the product page.</p>

<h4>Module, Layout & State Prefixes</h4>
<p>Snook recommends using prefixes to differentiate between module, layout and state rules. He uses l- for layout and is- for state, to describe what state something is in (for example, is-hidden and is-collapsed). Since modules are the bulk of a project, he recommends that for modules, we use the name of the module itself. A callout module would simply be .callout.</p> 

<h4>Theme Rules</h4>
<p>Theme rules describe how modules or layouts might look. Most sites don’t need a theme layer but SMACSS recommends that we’re aware of its existence.</p>

<h4>Onward</h4>
<p>After this, SMACSS becomes a bit trickier, and the fact that it’s a flexible framework is revealed more clearly. Snook offers various examples that help the reader think through different scenarios and decide the best way to name things. The focus is on a few things:</p>

<ul>
  <li>Minimizing depth and specificity: in order to make components of a page reusable, we need to make sure that they can easily be moved around without doing a ton of extra work. Per Snook’s example, if we nest so many items in our HTML, and end up writing CSS that looks like this: body.article > #main > #content > #intro > p > b , we have the problem of a lot of dependency on a particular HTML structure. Now, if we want to duplicate this module into the footer, we have to duplicate all of the rules with #footer instead. Rather than do this, we should style things from the root div.</li>

  <li>increase the semantic value of a section of HTML and decrease the expectation of HTML elements: Snook recommends using class names to describe our content in very specific ways (ways that are even more specific than what HTML5 semantic elements provide). He gives the example of creating a navigation using the <code>nav</code> element, and putting some <code>li</code> items in it. If the navigation never changed again, it would be fine, but the minute you need to add something or make a significant change (like making the nav vertical for a sidebar), you find yourself adding another, different nav class around your existing list items to get the styles you want. Instead, we could write a nav as a series of classes with the l- for layout naming syntax, so that we aren’t reliant on the built-in styles of the nav tag.</li>
</ul>

<h4>When Should I Use This?</h4>
<p>SMACCS is more of a mindset than a set of hard and fast rules, which makes it great for people who are more advanced in their CSS and are able to think through the huge amount of variables and situations given by Snook. As someone with a moderate knowledge of CSS, I find all the exceptions and advice about how to think about things overwhelming. SMACCS seems best for people who are advanced in CSS and looking for something loose that allows for all the benefits of scaleable CSS without the rigidity of a firm naming system.</p>

<h4>Object Oriented CSS (OOCSS)</h4>
<p>A CSS “object” is a repeating visual pattern that can be isolated into independent chunks of HTML or CSS to be reused again throughout the site. It was developed by Nicole Sullivan as a way to scale CSS for thousands of pages.</p>

<p>There are two main ideas behind OOCSS: having a separate “structure” and “skin” and a separate “container” and “content.”</p>

<h4>Structure and Skin</h4>
<p>Skins are visual features, such as background or border style, that are repeated throughout the site. A skin is a stand-along visual feature that can be mixed and matched with other objects to achieve visual variety without re-writing a bunch of your code. Separating the skin and structure often means that instead of relying on semantic HTML for meaning, we use classes to name our objects. For example, we can name an image class=“img” and then reference that in our stylesheet. This means that is a new type of image takes off next year (like SVG), we can simply add it to our HTML with the “img” class and then it will use the same styles found in our CSS without having to write any new CSS.</p>

<h4>Container and Content</h4>
<p>This idea is centered around the concept that we should rarely use location-dependent styles. Our objects should look the same no matter where we put them. For example, take the h2 tag. Instead of wrapping it in a class name like .category and then styling .category h2 {} , we should create an h2 category, like h2 class=“category”. This will ensure that all the regular unclosed h2s will look the same, our category class will look the same, and also that we don’t need to override our styles later if we want .category h2 to look like a normal h2.</p>

<h4>When Should I Use This?</h4>
<p>OOCSS, like the other two options, is all about creating isolated pieces of code that can be reused, and naming them properly so that this can happen. Of the three, OOCSS is possibly the simplest to use, as the naming rules are more flexible than BEM but there’s more structure given than with SMACCS. I find that this style would work well for teams of developers working on a large project that will grow later.</p>

<h2>Conclusion</h2>
<p>In my opinion, it’s best to use atomic design to organize your design elements, and then choose one of the CSS architecture options for implementation. Personally, as someone who is still somewhat new to CSS (or at least, new to writing good CSS), I like the straight-forwardness and super strict rules of BEM. I do think that perhaps as I get more projects under my belt and grow in my understanding of CSS, something like SMACSS will have a greater appeal. For people who are a bit more advanced and have a stronger personal style, molding their preferences into SMACSS of OOCSS offers a clear benefit. At the end of the day, all three options are great ways to make your CSS organized, clear, and reusable.</p> 

</section>