class PublicController < ApplicationController
  
  def home
    redirect_to profile_index_path if user_signed_in?
  end

end
