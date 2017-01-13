source 'https://rubygems.org'

gem 'rails'
gem 'sass-rails'
gem 'uglifier'
gem 'jquery-rails'
gem 'turbolinks'
######### ADDED BY ADMIN ###################
gem 'twilio-ruby' 
gem 'bootstrap-sass'
gem 'jquery-easing-rails'
gem 'jquery-turbolinks'
gem 'figaro'
gem 'delayed_job_active_record' 
gem 'daemons'# for queueing background jobs
gem 'whenever', :require => false
gem 'simple_form'
#########################################
group :development, :test do
  gem 'byebug'
  ############ ADDED by ADMIN ##############
  gem 'rspec-rails'
  gem 'factory_girl_rails' 
  ######################################## 
end
########### ADDED BY ADMIN #################
group :test do
  gem 'database_cleaner'
  gem 'faker'
  gem 'capybara'
end
#########################################
group :development do
  gem 'spring'
######### ADMIN ADDED ###################
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
##########################################
end
########### ADDED BY ADMIN #################
group :production do
	gem 'pg'
	gem 'rails_12factor'
	gem 'puma'
end
#########################################
