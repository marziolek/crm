class Notifier < ActionMailer::Base
  default :from => 'no-reply@example.com',
    :return_path => 'system@example.com'

  def notifie(recipient)
    @account = recipient
    mail(:to => recipient.email,
         :bcc => ["bcc@example.com", "Order Watcher <watcher@example.com>"])
  end
end
