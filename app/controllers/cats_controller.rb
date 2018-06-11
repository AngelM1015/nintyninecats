class CatsController < ApplicationController

    def index
        @cats = Cat.all
    end

    def show
      @thecat = Cat.find(params[:id])
    end

    def new
      @cat = Cat.new
    end

    def create
      # if Cat.create!(params[:id])
        # show.html { redirect_to @cats, notice: 'Item was successfully created.' }
        # else
        # index.html { render action: "new" }
        # end
      # cat = Cat.new(cat_params)
      # if cat.save
        # show html
      # else
        # error = cat.errors.full_messages
        # redirect to form and alert user send errors
      # end
      Cat.create!(cat_params) # not a good idea
      # make a new cat object. Example c = Cat.new(cat_params)
      # if cat.save redirect_to index else the form again
      puts "This is params"
      puts params
      puts "End of params"
      puts "This is cat_params>"
      puts cat_params
      puts "End of cat params"
      redirect_to cats_path
    #   if Cat.create!(params[:id])
    #     show.html { redirect_to @cats, notice: 'Item was successfully created.' }
    #   else
    #     index.html { render action: "new" }
    # end
    end

    def edit
     @cat = Cat.find(params[:id])
     puts @cat.id
     puts @cat.name
    end

    def update
      cat = Cat.find(params[:id])
      cat.update!(cat_params)
      redirect_to cat
    end

    def destroy
      # delete the cat with id of params[:id]
      puts "In the delete method"

      Cat.delete(params[:id])
      redirect_to cats_path
    end


    def cat_params
      params.require(:cat).permit(:name, :description, :color, :gender, :size, :birth_date)
    end
end

# This is going to be the body from the POST request
# {
#   catname: {
#     name: 'Jeff',
#     description: 'Hi I am jeff',
#     color: 'Red',
#     gender: 'Male',
#     size: 10,
#     sql: --ERROR
#   }
# }
