class StylistsController < ApplicationController
    def index
        @stylists = Stylist.all
    end

    def new
    end

end
