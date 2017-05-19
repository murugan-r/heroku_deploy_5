class UsersController < ApplicationController
  def index
    @users = User.all
    @location_hash = Gmaps4rails.build_markers(@users.where.not(:address_latitude => nil)) do |user, marker|
      marker.lat user.address_latitude
      marker.lng user.address_longitude
      marker.infowindow "<h5><a href='/users/#{user.id}'>#{user.email}</a></h5><small>#{user.address_formatted_address}</small>"
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
