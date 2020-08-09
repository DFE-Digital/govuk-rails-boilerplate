desc "Lint ruby code"
namespace :lint do
  desc "Lint Ruby with Rubocop"
  task ruby: :environment do
    puts "Linting ruby..."
    system "bundle exec rubocop app config db lib spec Gemfile --format clang -a"
  end

  desc "Lint SCSS with scss_lint"
  task scss: :environment do
    puts "Linting scss..."
    system "bundle exec scss-lint app/webpacker/styles"
  end
end
