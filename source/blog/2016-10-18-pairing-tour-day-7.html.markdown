---
title: Pairing Tour Day 7 - Chris
date: 2016-10-18 19:18 UTC
tags: Pairing, Reflection
---

<section class="article-container">

<p>Chris is an awesome senior designer here at 8th Light, and I was really excited to pair with him today. He had something come up that made him have to leave for home at lunch, but the morning was a fast-paced blend of quick meetings, work for the upcoming Software Craftsmanship North America (SCNA) conference that 8th Light puts on every year, and fixes for his client project.</p>

<p>We started the day right at 8:30 with a meeting with his client to discuss some of the new requirements for the story he’s working on, and as soon as it was over we switched gears to SCNA. Another employee working on the event had noticed that the parking information was outdated on one of the pages, so we quickly made the change and the employee merged it in. Chris built the site himself and  keeps his files very nicely organized, meaning he was able to find what he needed really fast.</p>

<p>Chris had designed all the speaker, volunteer, and attendee name tags in InDesign, which is a design software meant for creating books. He showed me how to export an excel doc to a CSV file (CSV stands for Comma Separated Values and is an old type of file that’s mostly just used currently by big financial institutions) and use that to do a data merge with InDesign. This populated all the first and last names of each person into the document so that we didn’t have to type them each out individually. We printed nearly 200 name tags and spent a while putting them in to their plastic holders while listening to his amazing 90’s playlist and talking about his favorite clients (The Royal Academy of Arts) and challenges in the past (designing for video games). It’s always fun to hear stories from people who have been in the industry for a while, and this was no different. The most valuable thing was learning about how he handles projects that have multiple stakeholders who have difficulty communicating with each other to give a cohesive vision for what they want him to design. (Basically, try to merge their visions if possible and elevate the issue to the 8th Light director on the project as soon as you’ve identified it.)</p>

<p>Next, we spent some time on a client story, which had to do with a bug where a form’s input field’s focus states weren’t working in any browsers outside of Chrome. A focus state tells the user where they are with some kind of visual cue (like when a field you’re typing into glows blue) and are important for screen readers. Every browser has a default focus state, but they’re often not very attractive and designers remove them and create their own. It’s important to always make some kind of focus state if you remove the default because there are plenty of users who navigate with the keyboard and need to know where they are on the page. Good focus states are also important for people with reduced vision who use the focus states to navigate the page.</p>

<p>Chris showed me where he had set the focus state with outline: <code>-webkit-focus-ring-color auto 5px</code>. Unfortunately, it was only working for OS X. Firefox and Internet Explorer weren’t supporting the <code>focus-ring-color</code>, and so we remade the styles to simply be a border. Chris created a Sass mixin so that he used all over the place to write less code - by using the mixin, he was able to write the few lines he needed once, and everywhere else keep it to one short line of code.</p>

<p>Main takeaways of the day:</p>
<ul>
	<li>Sass mixins can save you ton of room when it comes to your code. I’ve never made my own, but it’s time to start!</li>
	<li>Be wary when overriding a browser’s defaults styles - always research the impact and make sure to add in new styles when it’s something people depend on.</li>
</ul>

</section>