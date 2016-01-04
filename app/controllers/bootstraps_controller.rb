class BootstrapsController < ApplicationController
  before_action :set_bootstrap, only: [:show, :edit, :update, :destroy]

  # GET /bootstraps
  # GET /bootstraps.json
  def index
    @bootstraps = Bootstrap.all
  end

  # GET /bootstraps/1
  # GET /bootstraps/1.json
  def show
  end

  # GET /bootstraps/new
  def new
    @bootstrap = Bootstrap.new
  end

  # GET /bootstraps/1/edit
  def edit
  end

  # POST /bootstraps
  # POST /bootstraps.json
  def create
    @bootstrap = Bootstrap.new(bootstrap_params)

    respond_to do |format|
      if @bootstrap.save
        format.html { redirect_to @bootstrap, notice: 'Bootstrap was successfully created.' }
        format.json { render :show, status: :created, location: @bootstrap }
      else
        format.html { render :new }
        format.json { render json: @bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bootstraps/1
  # PATCH/PUT /bootstraps/1.json
  def update
    respond_to do |format|
      if @bootstrap.update(bootstrap_params)
        format.html { redirect_to @bootstrap, notice: 'Bootstrap was successfully updated.' }
        format.json { render :show, status: :ok, location: @bootstrap }
      else
        format.html { render :edit }
        format.json { render json: @bootstrap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bootstraps/1
  # DELETE /bootstraps/1.json
  def destroy
    @bootstrap.destroy
    respond_to do |format|
      format.html { redirect_to bootstraps_url, notice: 'Bootstrap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bootstrap
      @bootstrap = Bootstrap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bootstrap_params
      params.require(:bootstrap).permit(:title, :fname, :lname, :rating)
    end
end
