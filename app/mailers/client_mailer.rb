#encoding: utf-8
class ClientMailer < ActionMailer::Base
  default :from => "mar.ziolek@gmail.com"

  def powiadomienie(user)
    @user = user
    #attachments["rails.png"] = File.read("#{Rails.root}/public/images/rails.png")
    mail(:to => "<#{@user.email_address}>", :subject => @user.title, :template_path => 'emails', :template_name => 'powiadomienie') do |format|
      format.text
    end
  end

end
