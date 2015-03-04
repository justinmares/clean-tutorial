class BetaUsersController < ApplicationController
  before_action :set_beta_user, only: [:show, :edit, :update, :destroy]

  # GET /beta_users
  # GET /beta_users.json
  def index
    @beta_users = BetaUser.all
  end

  # GET /beta_users/1
  # GET /beta_users/1.json
  def show
  end

  # GET /beta_users/new
  def new
    @beta_user = BetaUser.new
  end

  # GET /beta_users/1/edit
  def edit
  end

  # POST /beta_users
  # POST /beta_users.json
  def create
    @user = BetaUser.new(beta_user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to '/?signup=true', notice: 'Thanks for signing up. We will be in touch soon!' }
      else
        format.html do
          render 'visitors/index', notice: 'Please Enter a valid email address'
        end
      end
    end
  end

  # PATCH/PUT /beta_users/1
  # PATCH/PUT /beta_users/1.json
  def update
    respond_to do |format|
      if @beta_user.update(beta_user_params)
        format.html { redirect_to @beta_user, notice: 'Beta user was successfully updated.' }
        format.json { render :show, status: :ok, location: @beta_user }
      else
        format.html { render :edit }
        format.json { render json: @beta_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beta_users/1
  # DELETE /beta_users/1.json
  def destroy
    @beta_user.destroy
    respond_to do |format|
      format.html { redirect_to beta_users_url, notice: 'Beta user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_beta_user
      @beta_user = BetaUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def beta_user_params
      params.require(:beta_user).permit(:email)
    end
end
