class InquiryMailer < ApplicationMailer
  def inquiry_mail(inquiry)
    @inquiry = inquiry
    mail(
      from: ENV['INQUIRY_MAIL'], #送信元アドレス
      to: inquiry.email,         #送信先アドレス
      subject: 'お問い合わせ',   #メールの件名
      bcc: ENV['INQUIRY_MAIL']   #BCC送信先アドレス
      )
  end
end
