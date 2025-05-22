class DoAppsController < ApplicationController
  before_action :set_do_app, only: %i[ show edit update destroy ]

  # GET /do_apps or /do_apps.json
  def index
    @do_apps = DoApp.all
  end

  # GET /do_apps/1 or /do_apps/1.json
  def show
  end

  # GET /do_apps/new
  def new
    @do_app = DoApp.new
  end

  # GET /do_apps/1/edit
  def edit
  end

  # POST /do_apps or /do_apps.json
  def create
    @do_app = DoApp.new(do_app_params)

    respond_to do |format|
      if @do_app.save
        format.html { redirect_to @do_app, notice: "Do app was successfully created." }
        format.json { render :show, status: :created, location: @do_app }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @do_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /do_apps/1 or /do_apps/1.json
  def update
    respond_to do |format|
      if @do_app.update(do_app_params)
        format.html { redirect_to @do_app, notice: "Do app was successfully updated." }
        format.json { render :show, status: :ok, location: @do_app }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @do_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /do_apps/1 or /do_apps/1.json
  def destroy
    @do_app.destroy!

    respond_to do |format|
      format.html { redirect_to do_apps_path, status: :see_other, notice: "Do app was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_do_app
      @do_app = DoApp.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def do_app_params
      params.expect(do_app: [ :title, :description, :status ])
    end
end
