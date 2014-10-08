class HomeController < ApplicationController
  def show
  end

  def index
  	@incidences = Incidence.all
    @hash = Gmaps4rails.build_markers(@incidences) do |incidence, marker|
      marker.lat incidence.latitud
      marker.lng incidence.longitud
      marker.infowindow incidence.description
    end
  end
end
