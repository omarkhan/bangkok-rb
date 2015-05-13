class AttendeeMailer < ApplicationMailer
  default from: "benjammin72@gmail.com"

  def register_success_email(attendee)
    @reciever = attendee
    @url = 'www.uteeni.com'
    mail(to: @reciever.email, subject: 'Thanks for registering!')
  end
end


