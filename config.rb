activate :autoprefixer do |prefix|
  prefix.browsers = "last 5 versions"
end
activate :directory_indexes
activate :dotenv

set :css_dir, "assets/stylesheets"
set :markdown_engine, :redcarpet
set :markdown do |markdown|
  markdown.smartypants = true
  markdown.with_toc_data = true
end

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :build do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
end
