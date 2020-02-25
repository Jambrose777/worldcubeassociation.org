# frozen_string_literal: true

class Delegates::RegionsController < ApplicationController
    def index
      @delegate_regions = DelegateRegion.all
    end
  
    def show
      @region = DelegateRegion.find_by_id(params[:id])
    end
  end
  