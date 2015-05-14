class AttendeeMailer < ApplicationMailer
  default from: "support@uteeni.com"

  def registration_success(attendee)
    @reciever = attendee
    @url = 'www.uteeni.com'
    mail(to: @reciever.email, subject: 'Thanks for registering!')
  end
end


