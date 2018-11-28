class GroupUserRoostersController < ApplicationController
  before_action :set_group_user_rooster, only: [:show, :edit, :update, :destroy]

  # GET /group_user_roosters
  # GET /group_user_roosters.json
  def index
    @group_user_roosters = GroupUserRooster.all
  end

  # GET /group_user_roosters/1
  # GET /group_user_roosters/1.json
  def show
  end

  # GET /group_user_roosters/new
  def new
    @group_user_rooster = GroupUserRooster.new
  end

  # GET /group_user_roosters/1/edit
  def edit
  end

  # POST /group_user_roosters
  # POST /group_user_roosters.json
  def create
    @group_user_rooster = GroupUserRooster.new(group_user_rooster_params)

    respond_to do |format|
      if @group_user_rooster.save
        format.html { redirect_to @group_user_rooster, notice: 'Group user rooster was successfully created.' }
        format.json { render :show, status: :created, location: @group_user_rooster }
      else
        format.html { render :new }
        format.json { render json: @group_user_rooster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_user_roosters/1
  # PATCH/PUT /group_user_roosters/1.json
  def update
    respond_to do |format|
      if @group_user_rooster.update(group_user_rooster_params)
        format.html { redirect_to @group_user_rooster, notice: 'Group user rooster was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_user_rooster }
      else
        format.html { render :edit }
        format.json { render json: @group_user_rooster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_user_roosters/1
  # DELETE /group_user_roosters/1.json
  def destroy
    @group_user_rooster.destroy
    respond_to do |format|
      format.html { redirect_to group_user_roosters_url, notice: 'Group user rooster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_user_rooster
      @group_user_rooster = GroupUserRooster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_user_rooster_params
      params.require(:group_user_rooster).permit(:user_id, :isadmin, :group_id)
    end
end
