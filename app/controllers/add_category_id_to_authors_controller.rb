class AddCategoryIdToAuthorsController < ApplicationController
  before_action :set_add_category_id_to_author, only: %i[ show edit update destroy ]

  # GET /add_category_id_to_authors or /add_category_id_to_authors.json
  def index
    @add_category_id_to_authors = AddCategoryIdToAuthor.all
  end

  # GET /add_category_id_to_authors/1 or /add_category_id_to_authors/1.json
  def show
  end

  # GET /add_category_id_to_authors/new
  def new
    @add_category_id_to_author = AddCategoryIdToAuthor.new
  end

  # GET /add_category_id_to_authors/1/edit
  def edit
  end

  # POST /add_category_id_to_authors or /add_category_id_to_authors.json
  def create
    @add_category_id_to_author = AddCategoryIdToAuthor.new(add_category_id_to_author_params)

    respond_to do |format|
      if @add_category_id_to_author.save
        format.html { redirect_to @add_category_id_to_author, notice: "Add category id to author was successfully created." }
        format.json { render :show, status: :created, location: @add_category_id_to_author }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_category_id_to_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_category_id_to_authors/1 or /add_category_id_to_authors/1.json
  def update
    respond_to do |format|
      if @add_category_id_to_author.update(add_category_id_to_author_params)
        format.html { redirect_to @add_category_id_to_author, notice: "Add category id to author was successfully updated." }
        format.json { render :show, status: :ok, location: @add_category_id_to_author }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_category_id_to_author.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_category_id_to_authors/1 or /add_category_id_to_authors/1.json
  def destroy
    @add_category_id_to_author.destroy
    respond_to do |format|
      format.html { redirect_to add_category_id_to_authors_url, notice: "Add category id to author was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_category_id_to_author
      @add_category_id_to_author = AddCategoryIdToAuthor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_category_id_to_author_params
      params.require(:add_category_id_to_author).permit(:category_id)
    end
end
