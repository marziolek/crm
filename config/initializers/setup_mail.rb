#encoding: utf-8
ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "mail.gmail.com",
  :user_name            => "mar.ziolek@gmail.com",
  :password             => "90050800378#martin1",
  :authentication       => 'plain',
  :enable_starttls_auto => true
}

ActionMailer::Base.default_url_options[:host] = "wierzba.wzks.uj.edu.pl:3313"

#Mail.register_interceptor(DevelopmentMailInterceptor) if Rails.env.development?
