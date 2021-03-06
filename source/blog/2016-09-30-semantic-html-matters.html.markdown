---
title: Using Semantic HTML
date: 2016-09-30 14:13 UTC
tags: HTML, Semantics, Front-end development
---

<section class="article-container">
<p>The basics of HTML and CSS are often the very first lessons in “teach yourself to code” tutorials. This makes sense, as these two languages build the basic visuals of a website and are much easier for a beginner to wrap their head around than, say, creating an array in ruby. They teach just enough to get yourself up and running so that you can move onto the fund stuff, but rarely move beyond the simplest of elements, much less teach us why semantic HTML is important. It makes sense to start here, but the fact that these tutorials typically only teach very basic HTML, combined with the fact that many developers never return to these “basics,” means that our knowledge stays, well, basic. I hate to admit that I’m one of these people - I’d rather dedicate my time to learning cool things like flex box (with my favorite <a href="http://flexboxfroggy.com/">frog-based game</a>) and <a href="https://css-tricks.com/css3-gradients/">beautiful CSS gradients</a> than learn about all the elements HTML5 gives us beyond <code>header</code>, <code>footer</code> and <code>section</code>. But alas, my mentor here at 8th Light has (I suspect) caught me using one too many <code>div</code> elements, and it’s high time I went back and augmented my HTML knowledge, which at this point has been the very minimum needed to hand-code a website. This might fly at some companies, but 8th Light is all about doing things right and not cutting corners, meaning it’s time for me to give up my constant use of <code>div</code>s and learn to do things properly now as an apprentice, before I ever have the chance to subject a client to an abundance of <code>div</code> tags. </p>

<h2>Semantic HTML</h2>

<p>Semantics is the study of the meaning of words and phrases in language, and semantic elements are simply elements that have a meaning. In HTML, a semantic element describes its meaning. For example, the <code>header</code> element is describing itself - “header” is both its name and its meaning. Alternatively, the element <code>div</code> is non-semantic, because “div” is not a word that tells us anything about its content. <code>span</code> is the other commonly used non-semantic HTML element.</p>

<h2>Why Bother with Semantic HTML?</h2>
<p>Using proper semantic elements in our HTML is important for a lot of reasons. First, it makes it easier for us to go back to and change things later. Also, since it’s easier to understand, a new person on the project can pick up the code they can learn it much faster. Second, it helps us when writing our CSS styles - we can change the look of the site without recoding all of the HTML.</p>

<p>In addition to helping human developers have an easier job, semantic HTML is also useful for browsers. Browser looks for semantic HTML, and when it finds it, two important things happen: first, visually impaired people are able to have speech browsers read the page to them properly. Using semantic HTML aids in accessibility. Second, search engines understand what the content is about and are able to rank your site more accurately. Semantic HTML helps increase SEO.</p>

<h2>Non-semantic HTML</h2>
<p>Non-semantic HTML elements include <code>div</code> and <code>span</code>. </p>

<p> <code>div</code> is short for “division,” as in, it divides your elements into chunks of code. A <code>div</code> creates a block-line element (so essentially there is a line-break before and after it) while <code>span</code> tags are inline and used for a small chunk of HTML inside a line (for example, a few words in a paragraph). I was unable to figure out the official meaning behind the term “span,” but think it might have to do with the literal meaning of “span,” which is “the full extent of something from end-to-end, as in “the bridge spans a quarter mile over the river.” This might make sense considering a <code>span</code> element is in-line and spans exactly the area we assign it to (as opposed to the block-element <code>div</code>, which has a line-break on either end, meaning it covers a bit more than the actual area we assign it to). </p>

<p>I made a <a href="http://codepen.io/pen/#">quick codepen </a>to show the advantage of using proper semantic HTML over <code>div</code>s. Other than being the right way to do things, better for screen readers and therefore accessibility, and SEO-aiding, it also results in less code, which is always better.</p>

<h2>Categories of Semantic HTML</h2>

<h3>Basic Elements</h3>
<p><code><strong>html</strong></code></p>
<p>The <code>html</code> element is the room of the document. All other elements have to be decedents of this element.</p>

<h3>Document Metadata</h3>
<p>Metadata contains information about the page (as opposed to everything that comes after in this list, which actually make something appear on the screen). Metadata includes information about styles, scripts, and data that help browsers and search engines render and use the page.</p>

<p><code><strong>base</strong></code></p>
<p>The <code>base</code> element specifies the base URL to use for all the relative URLs that are contained within a document. There’s only one <code>base</code> element per document.</p>

<p><code><strong>head</strong></code></p>
<p>The <code>head</code> element is used to hold the rest of the metadata within it, including the page’s title and links to its style sheets, scripts, and google fonts.</p>

<p><code><strong>link</strong></code></p>
<p>The <code>link</code> element shows relationships between the current document and an external resource and is what is commonly used to link to style sheets. This element is explained further later on.</p>

<p><code><strong>title</strong></code></p>
<p>The <code>title</code> element defines the title of the document, which is shown in the browser bar or page’s tab. The <code>title</code> can only contain text.</p>

<p><code><strong>style</strong></code></p>
<p>The <code>style</code> element contains the style information for a document and is expected to link to a page written in CSS.</p>

<p><code><strong>meta</strong></code></p>
<p>The <code>meta</code> element is for any metadata that can’t be represented in one of the other meta-related elements listed above. This often includes the line
<code>meta http-equiv="Content-Type" content="text/html; charset=UTF-8”</code>
which designates the character set, as well as the line
<code>meta name="viewport" content="width=device-width, initial-scale=1.0”</code>
which is necessary for CSS media queries (which are used for responsive design styles LINK) to be recognized.</p>

<h3>Sectioning</h3>
<p>Content section semantic HTML tags include <code>body</code>, <code>header</code>, <code>footer</code>, <code>nav</code>, <code>section</code>, <code>h1</code>, <code>h2</code>, <code>h3</code>, <code>h4</code>, <code>h5</code>, <code>h6</code>, <code>article</code>, <code>aside</code> and <code>address</code>. 

<p>These are very straightforward. The <code>body</code> tag encompasses the entire body of your document and is second only to the <code>html</code> tag. The <code>header</code> element specifies a header for your document or section, and the <code>footer</code> element species the footer. The <code>section</code> tag groups together a thematic group. <code>h1</code>, <code>h2</code>, <code>h3</code>, <code>h4</code>, <code>h5</code>, <code>h6</code> are headings, with <code>h1</code> being the most prominent, with the largest default style, with each heading decreasing in importance and size after <code>h1</code>. The <code>nav</code> element is short for “navigation” and defines a block of navigation links that will take the user to other main pages. An <code>aside</code> element definite content aside from the content it’s placed in. The information in an <code>aside</code> should be related to its surrounding content. The <code>article</code> tag specifies independent, self-contained content, like a news article, blog post, or comment. Finally, the <code>address</code> element supplies contact information for its nearest <code>article</code> or <code>body</code> ancestor.</p>

<p>While this is all pretty obvious, there are a few things that often get skipped over in basic HTML tutorials. First, it’s a common misconception that you should only use <code>header</code>, <code>footer</code> and <code>aside</code> once per page but that is not the case. W3schools states: “the <code>header</code> element should be used as a container for introductory content. You can have several <code>header</code> elements in one document.” They provide the following example: </p>

<img src="/images/html-images/header-example.png" alt="header example" />

<p>Also, the <code>aside</code> element is not only used for sidebars (though this example is so overused that you’d be forgiven for thinking this was the case). The <code>aside</code> tag is for a section of the page that has content that is tangentially related to the rest, but should be separate from that content. Examples outside of a sidebar include an author biography, profile information, and related links. </p>

<p>Finally, the <code>article</code> tag often gets replaced with the <code>section</code> tag due to misunderstanding about what the <code>article</code> tag is actually for, as well as confusion with these two tags in general.  <code>article</code> is for more than just what we think of as an “article” (like a news article) but is for any independent, self-contained content, which also includes things like a blog post or a comment on an article or blogpost. On the other hand, <code>section</code> is for grouping distinct sections of content or functionality. While the exact difference is <a href="http://stackoverflow.com/questions/7549561/section-vs-article-html5">heavily debated</a>, my understanding is that <code>section</code> is broader than <code>article</code>. This is a good example of how a <code>section</code> could hold the all the blog content, with an <code>article</code> used for each blog.</p>

<img src="/images/html-images/article-example.png" alt="article example" />

<h3>Grouping Content</h3>
<p>Again, fair few of these were new to me, despite the fact that I took a (paid, in-person) front-end dev class where I coded a few websites by hand. Lots of these get covered in the basic online tutorials, some of them don’t, and there are lots of interesting rules and abilities that the really basic ones have that the casual developer might not know about. Let’s dig into it.</p>

<code><strong>p</strong></code>
<p>A <code>p</code> tag makes a paragraph. This might be the most well-known content tag out there. But did you know that this is more structural than logical? List elements (<code>ol</code> and <code>ul</code>) cannot be the children of a <code>p</code> element. So if we had this code:

<img src="/images/html-images/p-and-ul-example.png" alt="p and ul example" />

<p>only the first line, “I need groceries” would be red. In order for the entire thing to be red, we would have to replace the <code>p</code> elements with a <code>div</code> element. Alternatively, we could close the <code>p</code> tags and then write our CSS to style all the elements, but that would require more code.</p>

<p>It’s also important to remember that we shouldn’t use a <code>p</code> element if there’s something else that is more specific that fits, for example the <code>address</code> element to write an address.</p>

<code><strong>hr</strong></code>
<p>The <code>hr</code> tag is use to represent a paragraph-level thematic break, such as a transition to a new topic in a reference book or a scene change in a story. It results in a line across the width of the page and a blank line on either side. It does not have a closing tag.</p>
<p>This example:</p>

<img src="/images/html-images/hr-example.png" alt="hr example" />

<p>Results in this:</p>

<img src="/images/html-images/hr-rendered.png" alt="hr example" />

<p>The <code>hr</code> tag makes that line. Most people would probably want to create a border that they could style to the desired width and color, but this is also an option. Here’s what the line really looks like (I zoomed way in to be able to see it properly):</p>

<img src="/images/html-images/hr-rendered-zoomed-in.png" alt="hr rendered zoomed in" />
 

<p><code><strong>pre</strong></code></p>
<p>The <code>pre</code> tag represents a block of preformatted text. Essentially, you have have things like paragraphs and spacing that you would have in a text editor like Pages or Word be preserved in your code as if it were a standard text editor. For example, the spacing and layout of the words in the following poem is an important part of the poem and needs to be preserved. Instead of using all sorts of CSS to get it to look like this, we can just copy and paste into Sublime (my preferred text editor for writing code) surrounded by the <code>pre</code> tags. (This is also useful when you’re writing a code example and want the example to maintain the spacing/indenting rules of that language.)
The html code looks like this (I simply copied text from my Pages document into Sublime, which kept all the weird spacing):</p>

<img src="/images/html-images/pre-example.png" alt="pre example" />


<p>Results in this:</p>

<img src="/images/html-images/pre-rendered.png" alt="pre rendered" />



<p><code><strong>blockquote</strong></code> and  <code><strong>cite</strong></code></p>
<p>The <code>blockquote</code> tag represents a section that is quoted from another source. (Don’t get this confused with <code>q</code> tag, which you can read about in the next section.) The content of a <code>blockquote</code> must be quoted from another source, which can be cited with <code>cite</code> tag if possible. The <code>cite</code> tag represents the title of a work. An example of both together is:</p>

<img src="/images/html-images/blockquote-example.png" alt="blockquote example" />

<p>Only works can be cited, and people are not works, so the <code>cite</code> tag in this case goes around the name of the book, not the author. It’s also important to note that a citation is not a quote. (Read about quotes in the <code>q</code> element, which are inline rather than block quotes, in the next section.) If you’re creating quote symbols in spoken text, you wouldn’t cite the quote. For example, this is wrong:</p>

<img src="/images/html-images/wrong-cite-examples.png" alt="wrong cite examples" />

<p>This is correct:</p>

<img src="/images/html-images/correct-cite-example.png" alt="correct cite example" />



<p><code><strong>figure</strong></code> and <code><strong>figcaption</strong></code></p>
<p>The best way to think about the <code>figure</code> tag is to think about a text book or manual that has different figures throughout the text. The figure could be an image, chart, graph, or some other type of information. Usually the author will discuss a top and write something like “see figure 4.1.” Figure 4.1 will reference this writing and also have a caption, like “a variety of method cards.” The figure is the <code>figure</code> and the caption is the <code>figcaption</code>.</p> 

<p><code>figures</code> elements are usually related to the surrounding flow and is self-contained. A <code>figure</code> should be self-contained so that it can easily be moved around, from a page to its own dedicated page to an appendix. Also, it’s recommended that <code>figure</code> elements be given their own name so that they can easily be referenced (“see figure 4.1”) as opposed to identified by where they are placed in the page (“see the figure to the right) in case the figure gets moved later.
The first <code>figcaption</code> child represents the caption of the figure. If there’s no <code>figcaption</code>, there’s no caption.</p>

<p>For example:</p>

<img src="/images/html-images/figure-and-figcaption-example.png" alt="figure and figcaption example" />

<p><code><strong>ol</strong></code>, <code><strong>ul</strong></code> and <code><strong>li</strong></code></p>
<p>The <code>ol</code> element stands for “ordered list,” as in a list that is numbered, such as the steps in an experiment. <code>ul</code> stands for “unordered list,” such as a grocery list. <code>li</code> stands for “list item” and is the child of <code>ol</code> and <code>ul</code>. The <code>li</code> element's end tags can be omitted if the <code>li</code> element is followed by another <code>li</code> element or if there is no more content in the parent element.</p>

<p>An unordered list results in a list with bullet points. For example, this code:</p>

<img src="/images/html-images/ul-example.png" alt="ul example" />

<p>Results with:</p>

<img src="/images/html-images/ul-rendered.png" alt="ul rendered" />

<p>By default, the listed items in an <code>ol</code> element will be numbered starting with one. For example, this code:</p>

<img src="/images/html-images/ol-example.png" alt="ol example" />

<p>Has this numbered result:</p>

<img src="/images/html-images/ol-rendered.png" alt="ol rendered" />

<p>There is also the option to “reverse” the list. For example, if you were making a list of the top 5 best shows on Netflix right now, and wanted the list to start with 5 and end with 1, you could have:</p>

<img src="/images/html-images/ol-reversed-example.png" alt="ol reversed example" />

<p>to result in:</p>

<img src="/images/html-images/ol-reversed-rendered.png" alt="ol reversed rendered" />

<p>For even more control, you have give your <code>li</code> elements a value. The following code has the same result as the image above:</p>

<img src="/images/html-images/ol-value-example.png" alt="ol value example" />

<p><code><strong>dl</strong></code>, <code><strong>dt</strong></code> and <code><strong>dd</strong></code></p>
<p>Since these html elements are not commonly taught, it’s best to just say they are for creating certain types of lists and start with an example.</p>
<p>The code:</p>

<img src="/images/html-images/dl-dt-dd-example.png" alt="dl dt dd example" />


<p>Results in:</p>

<img src="/images/html-images/dl-dt-dd-rendered.png" alt="dl dt dd rendered" />

<p><code>dl</code> stands for “description list” and this element represents an list of things that are associated.</p>

<p>The <code>dt</code> element represents a term, name, or part of a description within a description list (the <code>dl</code> element). I couldn’t confirm this, but think that <code>dt</code> stands for “description term.”</p>

<p>The <code>dd</code> element represents a description, definition, or value.</p>

<p>The <code>dl</code> requires and opening and closing tag. A <code>dt</code> element, on the other hand, doesn’t need an end tag if it’s immediately followed by another <code>dt</code> element or by a <code>dd</code> element. The <code>dd</code> element’s doesn’t need a closing tag if it’s immediately followed by another <code>dd</code> element or by a <code>dt</code> element.</p>

<code><strong>main</strong></code>
<p>The <code>main</code> element is used to signify what the main content of a page is. It’s different from <code>section</code>, <code>article</code> and <code>nav</code> in that it’s not sectioning content. This means that it doesn’t contribute to the document outline. What it does do is help screen readers understand where the main content is. It came about because people thought that since we had a <code>header</code>, <code>footer</code> and <code>aside</code>, we should also have something that represents the main part of the content. Before this, people often created a <code>div</code> and gave it a class of “main” or “content.” </p>


<h3>Text level semantics</h3>
<code><strong>a</strong></code>
<p>The <code>a</code> element is most commonly seen immediately followed by the href attribute to create a link. In that case, the a is the hypertext anchor. The <code>a</code> element is also seen used as a placeholder for where a link could go later or in navigation link of the current page.</p>

<p>The <code>a</code> element can wrap around entire paragraphs, lists, tables, etc, as well as entire sections, so long as there aren’t any buttons, links or other interactive content within it.</p>

<code><strong>em</strong></code> and <code><strong>i</strong></code>
<p>The <code>em</code> element represents emphasis in content. The placement of emphasis on certain words in a sentence can change that sentence’s meaning, and the <code>em</code> tag achieves that stress in HTML. For example:</p>

<img src="/images/html-images/em-example.png" alt="em example" />

<p>puts the emphasis on “You’re.”</p>

<p>The <code>em</code> element is not the same as generic italics. For italics, <code>i</code> is used. The <code>i</code> element represents a span of text that carries a different mood or voice or indicates a different type of text, such as taxonomic designation, a technical term, a word or phrase from another language, or a thought.</p>

<p>Often, a class attribute is used on the <code>i</code> element to identify why the element is being used (for example, a word in a different language as opposed to a taxonomic term). This is done so that if it needs too be changed at a later date, the author doesn’t have to search the entire document and annotate each use.</p>

<p>Example of <code>i</code> with a class:</p>

<img src="/images/html-images/i-example.png" alt="i example" />

<p>Although both <code>em</code> and <code>i</code> result in the same style of slanted text, it’s important to use the right element, and a class name if necessary, for screen readers and for ease of change later on.</p>

<code><strong>strong</strong></code> and <code><strong>b</strong></code>
<p>Much like <code>em</code> and <code>i</code>, <code>strong</code> is to indicate strong importance, seriousness or urgency. On the other hand, the <code>b</code> element is used to represent a span of text to which attention needs to be drawn for utilitarian purposes but does not convey any extra importance. An example of this might be a keyword in a text. The <code>b</code> element is also often used with a class to identify why the element is being used and make changes later on easier. Again, although they both result in what we think of as “bold” text, it’s important to use whichever better fits the purpose for screen readers.</p>

<code><strong>small</strong></code>
<p>The <code>small</code> element represents small print and other side comments that should have a smaller text than the text around it.</p>

<code><strong>s</strong></code>
<p>The <code>s</code> element represents content that is no longer relevant or accurate, and results in a strikethrough of the text.</p>

<code><strong>q</strong></code>
<p>The <code>q</code> element represented quoted text. However, using <code>q</code> elements to mark up quotations is optional if you’d rather use explicit quotation punctuation. The <code>q</code> element should not be used for times when quotations would be used for something other than a quote, for example when someone is being sarcastic.</p>

<code><strong>dfn</strong></code>
<p>The <code>dfm</code> element represents the defining instance of a term. For example,</p>

<img src="/images/html-images/dfn-example.png" alt="dfn example" />

<p>In this case, “Irregardless” becomes italicized.</p>

<code><strong>abbr</strong></code>
<p>The <code>abbr</code> element represents an abbreviation or acronym. The explanation of the abbreviation/aconym is optional and is done with the title attribute. Doing this results in the explanation appearing the use hovers their mouse over the word. For example,</p>

<img src="/images/html-images/abbr-example.png" alt="abbr-example" />

<p>Results in a small box with the words “World Health Organization” appearing when the user hovers over “WHO”. (Unfortuantely, this was impossible to get a screenshot of, but run this through on your machine to see exactly what happens.)</p>

<code><strong>ruby</strong></code>, <code><strong>rt</strong></code> and <code><strong>rp</strong></code>

<p>The <code>ruby</code> tag specifies a ruby annotation. A ruby annotation is a small extra text that’s attached to the main text to explain its pronunciation or meaning. The <code>rt</code> element gives the information and <code>rp</code> (which is optional) defines what to show for browsers that don’t support ruby annotations. It’s common in Japanese text.</p>

<p>In this example, the character needs and explanation, so it is put in the <code>rt</code> tags.</p>

<img src="/images/html-images/ruby-example.png" alt="ruby example" />

<p>When rendered, it looks like this:</p>

<img src="/images/html-images/ruby-rendered.png" alt="ruby rendered" />

<p>There are lots of rules about how to handle things like compound words, nesting, ancestry, and other things, so if you’re going to use this, be sure to look at its HTML spec.</p>

<code><strong>data</strong></code>
<p>The <code>data</code> element represents its contents, along with a form of those contents in the value attribute that is machine-readable. The value attribute must be present and must be a representation of the element’s contents in a machine-readable format.</p>

<p>The <code>data</code> element is used when the computer needs some information but the user doesn’t. For example:</p>

<img src="/images/html-images/data-example.png" alt="data example" />

<p>In this example, the computer can understand the value given (which is the CPU code of the products). The user doesn’t necessarily want to see this, but it needs to be there so that the computer can do other things with it.</p>

<code><strong>time</strong></code>
<p>The <code>time</code> element is used to mark a time in the browser. It doesn’t show up as anything special to users (but that doesn’t mean it’s not still important!) The content in a <code>time</code> element can include dates, times, time zones and durations. We use the “datetime” attribute then specifying a date.</p>

<p>For example:</p>

<img src="/images/html-images/time-example.png" alt="time example" />

<p><code><strong>code</strong></code></p>
<p>The <code>code</code> element changes the way a word looks to indicate that it’s code and not normal text. It represents a fragment of computer code. (Note that there is no formal way to specify which language the code is written in.)</p>

<p>For example, writing:</p>

<img src="/images/html-images/code-example.png" alt="code example" />

<p>Creates this result:</p>

<img src="/images/html-images/code-rendered.png" alt="code rendered" />

<p>The “time” word looks different because it was in the <code>code</code> element, and this difference signifies to the user that this is fragment from a programming language.</p>

<code><strong>var</strong></code>
<p>The <code>var</code> element represents a variable. It could be a variable in a mathematical expression or programming language, or an identifier representing a constant, a symbol for a physical quantity, a function parameter or just a placeholder for a variable. Text inside <code>var</code> tags appear italicized to the user.</p> 

<code><strong>samp</strong></code>
<p>The <code>samp</code> element represents sample output from a computer program.
For example:</p>

<img src="/images/html-images/samp-example.png" alt="samp example" />

<p>Results in:</p>

<img src="/images/html-images/samp-rendered.png" alt="samp rendered" />

<p><code><strong>kbd</strong></code></p>
<p>The <code>kbd</code> variable is short for “keyboard” and represents keyboard input. This is useful when giving directions. The HTML spec gives the following example:</p>

<img src="/images/html-images/kbd-example.png" alt="kbd example" />

<p>Just like with the <code>code</code> element, the text inside of <code>kbd</code> has a different style when rendered:</p>

<img src="/images/html-images/kbd-rendered.png" alt="kdb rendered" />

<p><code><strong>sub</strong></code> and <code><strong>sup</strong></code></p>
<p>The <code>sub</code> element represents a subscript and the <code>sup</code> element represents a superscript.</p>

<p>For example,</p>

<img src="/images/html-images/sub-and-sup-example.png" alt="sub and sup example" />

<p>renders to:</p>
<img src="/images/html-images/sub-and-sup-rendered.png" alt="sup and sub rendered" />

<code><strong>u</strong></code>
<p>The <code>u</code> element represents text with non-textual annotation. This could include labeling a piece of text as a proper nam in Chinese or labeling the text as misspelt. The <code>u</code> element makes text underlined. It’s important to not use this when a user might think that the underlined text is a link, as links are often underlined to show that they are clickable. Also, there’s usually some other markup element that’s more appropriate to use than <code>u</code>, such as <code>em</code> for emphasis. The <code>u</code> element is rarely used.</p>

<code><strong>mark</strong></code>
<p>The <code>mark</code> element represents text that is marked (highlighted) for reference purposes. It results in the text having a yellow background. 
For example,</p>

<img src="/images/html-images/mark-example.png" alt="mark example" />

<p>Renders as:</p>

<img src="/images/html-images/code-rendered.png" alt="code rendered" />

<p><code><strong>bdi</strong></code> and <code><strong>bdo</strong></code></p>
<p>The <code>bdi</code> element represents text that needs to be isolated from its surroundings for the purposes of bidirectional text formatting. This is useful when working with user-generated content where we can’t be sure of the directionality, perhaps because it could be written in a language with a different character set. The example from the HTML spec uses a name written in Arabic:</p>

<img src="/images/html-images/bdi-example.png" alt="bdi example" />

<p>Because the <code>bdi</code> element was used, these names and post numbers output to an unordered list with bullet points as expected. But if the <code>bdi</code> tags weren’t there, the number “3” would jump to be next to the word “User.” This happens in the code, before anything is rendered to the user’s screen.</p>

<p>The <code>bdo</code> element allows the author to override the Unicode bidirectional algorithm by explicitly specifying a direction override for its children. This is done by specifying the “dir” attribute to equal “ltr” for left-to-right or “rtl” for right to left.</p>

<code><strong>br</strong></code>
<p>A <code>br</code> element represents a line break. It should only be used then the text actually calls for a line break, such as poems and addresses. It’s often used to create more space in styles, but the correct way to do this would be to use CSS to specify things like margin and padding. It should not be used for separating thematic groups in a paragraph.</p>

<code><strong>wbr</strong></code>
<p>The <code>wbr</code> represents a line break opportunity, as opposed to an actual line break. If you wanted to have a bunch of words all be together without spacing but still wanted them to be able to wrap in a readable fashion, you would use this.</p>

<p>For example,</p>

<img src="/images/html-images/wbr-example.png" alt="wbr example" />

<p>renders as</p>

<img src="/images/html-images/wbr-rendered.png" alt="wbr rendered" />

<p>but leaves the opportunities for line breaks to occur if the screen size is small enough to need it.</p>



<h3>Links and Link Types</h3>
<p>In HTML, link types indicate the relationship between two documents. One links to the other using a <code>link</code> element, and <code>a</code> element or an <code>area</code> element.</p> 

<code><strong>link</strong></code>
<p>The <code>link</code> element specifies the relationship between the current document and external one. One of the most popular ways to use this is to import a CSS stylesheet to an index.html page. For example:</p>

<p>link rel="stylesheet" href=“CSS/style.css"</p>

<p>The “rel” (relationship) value in this case is “stylesheet” but it can be set to a lot of different values. For example, a real of “help” would indicate that the link is leading to a resource about the whole page. A value of “author” indicated that the page leads to information about the author or how to contact her and “license” leads to licensing information.</p> 

<code><strong>a</strong></code>
<p>The <code>a</code> element is the anchor element, and defines a hyperlink to a location on any other page on the web or to a location on the same page. It can also be used to create an anchor point at various spots in a page so that links aren’t limited to connecting only to the top of the page. The HTML specs say this is obsolete, but with the current trend of “endless scroll” style pages, they’ve made a resurgence.</p>

<p>There are several attributes that can be given to the <code>a</code> element. The “href” attribute is required for linking to external pages. The “target” attribute is commonly used and dictates where to display the linked source. When “target” is set to “_blank” the link will open in a new tab.</p>

<code><strong>area</strong></code>
<p>The <code>area</code> element is less commonly used than <code>link</code> and <code>a</code> but still worth knowing about. It creates a clickable “hotspot” on an image. This must be done within the <code>map</code> element. On an image, an attribute called “usemap” creates an ID, and that ID is set with the coordinates of where in the image will be clickable. W3Schools has a <a href="http://www.w3schools.com/tags/tryit.asp?filename=tryhtml_areamap">great example</a> of this with an image of a planet in space. The planet is clickable while the black space around it is not. This is done by setting the “usemap” attribute to an ID name, and then giving the ID a specific area of the image using the <code>area</code> element.</p>

<h3>Conclusion</h3>
<p>At the end of the day, learning all the nitty gritty of semantic HTML is dull, but extremely important. First because it’s key to screen readers and accessibility for people who are low-vision/blind, second because of factors like SEO, and third because if you want to write quality, sustainable code, you have to do things by the book. After spending a few days pouring over the HTML specs, I have a piece of advice: aid your understanding of some of the weirder elements with W3Schools. Towards the end of writing this post I had one of their “Try it!” windows open and was dumping the example from the specs into it to see what happened. A shortcoming of the specs is that they don’t actually show you what en example results in. The <code>mark</code> element is examplained as “marked or highlighted” but I didn’t realize until I actually rendered the example that the marked area literally has a bright yellow background. A detailed and technical explanation is all good and well, but be sure to actually run their examples or you might not actually understand what’s going on. Also, watch for some strangely political examples. There was a pro-atheism thread through the spec examples, as well as one that seems to be throwing shade at W3Schools. Regardless of all of this, understanding that HTML is a lot more than just headers and <code>p</code> tags is important, and spending a day reading the specs and testing out the examples will make you a much more solid front end developer.</p> 
</p></p></p>
</section>