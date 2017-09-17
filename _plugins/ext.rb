require 'jekyll-assets'
require 'jekyll/tagging'
require 'jekyll-sitemap'

require 'jekyll-crosspost-to-medium' unless ENV.fetch('JEKYLL_ENV', 'dev') == 'production'

require 'jekyll-feed'
require 'susy'
require 'bundler/setup'

Bundler.require(:default, 'development')

if defined?(RailsAssets)
  RailsAssets.load_paths.each do |path|
    Sprockets.append_path path
  end
end
