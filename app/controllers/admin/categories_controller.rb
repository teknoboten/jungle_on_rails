class Admin::CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    puts @category

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(
      :name
    )
  end
end



# Parameters: {"authenticity_token"=>"[FILTERED]", "product"=>{"name"=>"Void Bushes", "description"=>"it's an evil bush", "category_id"=>"1", "quantity"=>"4", "price"=>"34", "image"=>#<ActionDispatch::Http::UploadedFile:0x0000000115a40338 @tempfile=#<Tempfile:/var/folders/j2/v8lx2k1143b0vlm2z9zqxscr0000gn/T/RackMultipart20220708-80534-y5rvd1.jpg>, @original_filename="CVP2KpBUsAEo4g0.jpg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\"product[image]\"; filename=\"CVP2KpBUsAEo4g0.jpg\"\r\nContent-Type: image/jpeg\r\n">}, "commit"=>"Create Product"}
# {"name"=>"Void Bushes", "description"=>"it's an evil bush", "category_id"=>"1", "quantity"=>"4", "image"=>#<ActionDispatch::Http::UploadedFile:0x0000000115a40338 @tempfile=#<Tempfile:/var/folders/j2/v8lx2k1143b0vlm2z9zqxscr0000gn/T/RackMultipart20220708-80534-y5rvd1.jpg>, @original_filename="CVP2KpBUsAEo4g0.jpg", @content_type="image/jpeg", @headers="Content-Disposition: form-data; name=\"product[image]\"; filename=\"CVP2KpBUsAEo4g0.jpg\"\r\nContent-Type: image/jpeg\r\n">, "price"=>"34"}



{"authenticity_token"=>"[FILTERED]", "category"=>{"name"=>"Bushes"}, "commit"=>"Create Category"}