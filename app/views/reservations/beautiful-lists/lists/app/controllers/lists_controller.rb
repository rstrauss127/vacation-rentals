class ListsController < ApplicationController
  def index
    #implict rendering lists/index.html.erb
    @list = List.new
    @lists = List.all
    #raise @lists.inspect #check if database query was this succesful
  end

  def show
  #params has all the data passed by a user /lists/:id
    @list = List.find(params[:id])
    @item = Item.new
  end

  def create
    @list = List.new(list_params) #mass assignment
    if @list.save
      redirect_to list_url(@list)
    else
      @lists = List.all
      render :index
    end
  end

  private
  def list_params #strong params pattern
    params.require(:list).permit(:name)
  end
end
