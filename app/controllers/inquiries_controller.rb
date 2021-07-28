class InquiriesController < ApplicationController

  def new
    @inquiry = Inquiry.new
  end

  def create
    @inquiry = Inquiry.new(inquiry_params)
    if @inquiry.save
      InquiryMailer.inquiry_mail(@inquiry).deliver
      redirect_to complete_inquiries_path
    else
      render :new
    end
  end

  def confirm
    @inquiry = Inquiry.new(inquiry_params)
  end

  def complete
  end

  private

  def inquiry_params
    params.require(:inquiry).permit(:name, :email, :message)
  end
end
