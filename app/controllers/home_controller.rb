class HomeController < ApplicationController

    before_action :authenticate_blood_donator!
    before_action :authenticate_blood_bank!

    def index
    end

end
