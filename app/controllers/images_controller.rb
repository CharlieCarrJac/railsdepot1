class ImagesController < ApplicationController


  def show
    send_file "#{Rails.root}/app/assets/images/#{params[:filename]}", type: "image/jpeg", disposition: 'inline'
  end
end


