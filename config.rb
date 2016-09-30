###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

###
# Helpers
###

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"
  # blog.permalink = "/blog/:year-:month-:day-:title.html"
  blog.sources = "/blog/:year-:month-:day-:title.html"

  blog.permalink = "/blog/{year}/{month}/{day}/{title}.html"
  # Matcher for blog source files
  # blog.sources = "{year}-{month}-{day}-{title}.html"
  # blog.taglink = "tags/{tag}.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = "{year}.html"
  # blog.month_link = "{year}/{month}.html"
  # blog.day_link = "{year}/{month}/{day}.html"
  # blog.default_extension = ".markdown"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  # Enable pagination
  # blog.paginate = true
  # blog.per_page = 10
  # blog.page_link = "page/{num}"
end

page "/feed.xml", layout: false

# Build-specific configuration
configure :build do
  # Minify CSS on build
  # activate :minify_css
  # Relative assets needed to deploy to Github Pages
  # activate :relative_assets
  # set :site_url, "/epenzeymoog"
  # Minify Javascript on build
  # activate :minify_javascript
end

# Reload the browser automatically whenever files change
# configure :development do
#   activate :livereload
# end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'master'
  deploy.build_before = true
end

activate :directory_indexes

set :images_dir, 'images'

# activate :blog do |blog|
#   blog.prefix = "blog"
# end

# set :site_url, ""
