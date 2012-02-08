#encoding: utf-8
class ClientMailer < ActionMailer::Base
  default :from => "mar.ziolek@gmail.com"

  def powiadomienie(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{@user.name} #{@user.surname} <#{@user.email}>", :subject => "coś ze strony")
  end

end
