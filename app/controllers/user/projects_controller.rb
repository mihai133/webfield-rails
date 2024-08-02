class User::ProjectsController < UserController
  before_action :set_user_project, only: %i[ show edit update destroy ]

  # GET /user/projects or /user/projects.json
  def index
    @user_projects = current_user.projects.order(created_at: :desc)
  end

  # GET /user/projects/1 or /user/projects/1.json
  def show
  end

  # GET /user/projects/new
  def new
    @user_project = current_user.projects.new 
  end

  # GET /user/projects/1/edit
  def edit
  end

  # POST /user/projects or /user/projects.json
  def create
    @user_project = current_user.projects.new(user_project_params)

    respond_to do |format|
      if @user_project.save
        format.html { redirect_to user_project_url(@user_project), notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @user_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user/projects/1 or /user/projects/1.json
  def update
    respond_to do |format|
      if @user_project.update(user_project_params)
        format.html { redirect_to user_project_url(@user_project), notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @user_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user/projects/1 or /user/projects/1.json
  def destroy
    @user_project.destroy!

    respond_to do |format|
      format.html { redirect_to user_projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_user_project
      @user_project = current_user.projects.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_project_params
      params.require(:user_project).permit(:name, :description)
    end
end
