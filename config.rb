# Require any additional compass plugins here.
# Set this to the root of your project when deployed:
require "susy"
require 'sassy-buttons'

http_path = "/"
cache_dir = "tmp/sass-cache" 
css_dir = "public/stylesheets"
sass_dir = "app/stylesheets"
images_dir = "public/images"
javascripts_dir = "public/javascripts"
fonts_dir = "stylesheets/fonts"
# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true
output_style = (environment == :production) ? :compressed : :expanded
line_comments = false