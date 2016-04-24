source 'https://rubygems.org'

ruby '2.2.3'
gem 'rails', '4.2.4'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
######### ADDED BY ADMIN ###################
gem 'twilio-ruby', '~> 4.11', '>= 4.11.1' #Twilio API
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'jquery-easing-rails', '~> 0.0.2'
gem 'jquery-turbolinks', '~> 2.1'
gem 'figaro', '~> 1.1', '>= 1.1.1' # To store confedential infos
gem 'delayed_job_active_record', '~> 4.1' #for queueing background jobs
gem 'daemons', '~> 1.2', '>= 1.2.3'# for queueing background jobs
gem 'whenever', :require => false
gem 'aws-ses', '~> 0.6.0', require: 'aws/ses'
#########################################
group :development, :test do
  gem 'byebug'
  ############ ADDED by ADMIN ##############
  gem 'rspec-rails', '~> 3.4', '>= 3.4.2'
  gem 'factory_girl_rails', '~> 4.6' 
  ######################################## 
end
########### ADDED BY ADMIN #################
group :test do
  gem 'database_cleaner', '~> 1.5', '>= 1.5.1'
  gem 'faker', '~> 1.6', '>= 1.6.1'
  gem 'capybara', '~> 2.6', '>= 2.6.2'
end
#########################################
group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
######### ADMIN ADDED ###################
  gem 'capistrano'
  gem 'capistrano3-puma'
  gem 'capistrano-rails', '~> 1.1.3'
  gem 'capistrano-bundler', require: false
  gem 'capistrano-rvm'
##########################################
end
########### ADDED BY ADMIN #################
group :production do
	gem 'pg', '~> 0.15'
	gem 'rails_12factor', '~> 0.0.3'
	gem 'puma', '~> 2.16'
end
#########################################
