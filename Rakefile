desc 'generate static site'
task :build do
  sh 'bundle exec jekyll build'
end

desc 'run server'
task :develop do
  sh 'rm -f .jekyll-metadata'
  sh 'bundle exec jekyll server -w --incremental'
end

desc 'create new post'
task :post do
end

desc 'convert images'
task :convert do
  sh 'rm -r -f images'
  sh 'cp -r images-src images'
  Dir.glob('images/**/*.{png,jpg}').each do |path|
    # puts path
    sh "mogrify -quality 70 #{path}"
    if path.include? ".png"
      sh "optipng -o7 #{path}"
    elsif path.include? ".jpg"
      sh "jpegoptim --strip-all #{path}"
    end
  end
end