class PastPapersController < ApplicationController
  def index
    @past_papers = PastPaper.all
  end

  def show
    @past_paper = PastPaper.find(params[:id])
    render :show
  end
end
