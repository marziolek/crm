class ClientMailer < ActionMailer::Base
  default :from => "mar.ziolek@gmail.com"

  def powiadomienie(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "#{"marcin ziolek"} <#{@user.mail}>", :subject => "cos ze strony")
  end

end
