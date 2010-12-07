source "http://rubygems.org"

gem "rack", "1.1.0"
gem "unicorn"
gem "rails", "2.3.10"
gem "mysql2"
gem "configatron"
gem "git"

group :production do
  gem "thin"
end

group :deploy do
  gem "net-ssh", :require => "net/ssh"
end
