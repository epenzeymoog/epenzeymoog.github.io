# epenzeymoog.github.io
My portfolio site built on Middleman

To start the server: middleman serve

Only ever work in the source directory.
Save yourself a headache of dealing with the `source` vs `master` thing and stay on the `source` branch rather than using a new branch, this isn't a group project after all.

To deploy the site:
stay on branch `source` and run:
`bundle exec middleman build` then `middleman deploy`
Then do the regular git add, commit and push workflow.

After a deploy, if site appears to be down, check:
Settings > Custom domain
and make sure that evapenzeymoog.com is there.
