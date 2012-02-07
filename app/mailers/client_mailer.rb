#encoding: utf-8
class ClientMailer < ActionMailer::Base
  default :from => "wierzba@uj.edu.pl"

  def powiadomienie(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{user} <#{user}>", :subject => "coś ze strony")
  end

end
