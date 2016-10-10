class InsideController < ApplicationController

    before_action :authenticate_blood_donator!
    before_action :authenticate_blood_bank!

    def opa
    end

end
