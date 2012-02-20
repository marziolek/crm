#encoding: UTF-8
class ClientMailer < ActionMailer::Base
  default :from => "mar.ziolek@gmail.com"

  def powiadomienie(user)
    @user = user
    mail(:to => "<#{@user.email_address}>", :subject => @user.title) do |format|
      format.text
    end
  end

end
