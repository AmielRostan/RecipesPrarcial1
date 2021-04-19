class CreateRecipesAuthorsJoinTablesController < ApplicationController
  before_action :set_create_recipes_authors_join_table, only: %i[ show edit update destroy ]

  # GET /create_recipes_authors_join_tables or /create_recipes_authors_join_tables.json
  def index
    @create_recipes_authors_join_tables = CreateRecipesAuthorsJoinTable.all
  end

  # GET /create_recipes_authors_join_tables/1 or /create_recipes_authors_join_tables/1.json
  def show
  end

  # GET /create_recipes_authors_join_tables/new
  def new
    @create_recipes_authors_join_table = CreateRecipesAuthorsJoinTable.new
  end

  # GET /create_recipes_authors_join_tables/1/edit
  def edit
  end

  # POST /create_recipes_authors_join_tables or /create_recipes_authors_join_tables.json
  def create
    @create_recipes_authors_join_table = CreateRecipesAuthorsJoinTable.new(create_recipes_authors_join_table_params)

    respond_to do |format|
      if @create_recipes_authors_join_table.save
        format.html { redirect_to @create_recipes_authors_join_table, notice: "Create recipes authors join table was successfully created." }
        format.json { render :show, status: :created, location: @create_recipes_authors_join_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @create_recipes_authors_join_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /create_recipes_authors_join_tables/1 or /create_recipes_authors_join_tables/1.json
  def update
    respond_to do |format|
      if @create_recipes_authors_join_table.update(create_recipes_authors_join_table_params)
        format.html { redirect_to @create_recipes_authors_join_table, notice: "Create recipes authors join table was successfully updated." }
        format.json { render :show, status: :ok, location: @create_recipes_authors_join_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @create_recipes_authors_join_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /create_recipes_authors_join_tables/1 or /create_recipes_authors_join_tables/1.json
  def destroy
    @create_recipes_authors_join_table.destroy
    respond_to do |format|
      format.html { redirect_to create_recipes_authors_join_tables_url, notice: "Create recipes authors join table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_create_recipes_authors_join_table
      @create_recipes_authors_join_table = CreateRecipesAuthorsJoinTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def create_recipes_authors_join_table_params
      params.require(:create_recipes_authors_join_table).permit(:recipes, :authors)
    end
end
