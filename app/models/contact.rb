class Contact < MailForm::Base

  attributes :name, :vaildate => true
  attributes :email, :vaildate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attributes :message
  attributes :nickname, :captcha => true

  def headers
    { :to => "chriscanterburymusic@gmail.com" }
  end
end
