#inside smtp.rb
require 'mail'
options = { :address              => "smtp.gmail.com",
            :port                 => 465,
            :domain               => 'your.host.name',
            :user_name            => 'cocktail4one@gmail.com',
            :password             => '',
            :authentication       => :login,
            :ssl                  => true,
            :openssl_verify_mode  => 'none'
          }


  #inside smtp.rb
Mail.defaults do
  delivery_method :smtp, options
end


#inside smtp.rb
def mail_that(recipient = 'test@test.com',subjects="test",body_message="test")
  # byebug
  Mail.deliver do
         to recipient
       from 'cocktail4one@gmail.com'
    subject subjects
       body body_message
  end
end
