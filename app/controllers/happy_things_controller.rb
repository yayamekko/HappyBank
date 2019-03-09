class HappyThingsController < ApplicationController
  before_action :set_happy_thing, only: [:show, :edit, :update, :destroy]

  # GET /happy_things
  # GET /happy_things.json
  def index
    @happy_things = HappyThing.all
  end

  # GET /happy_things/1
  # GET /happy_things/1.json
  def show
  end

  # GET /happy_things/new
  def new
    @happy_thing = HappyThing.new
  end

  # GET /happy_things/1/edit
  def edit
  end

  # POST /happy_things
  # POST /happy_things.json
  def create
    #happy_thingオブジェクト作成
    @happy_thing = HappyThing.new(happy_thing_params)

    respond_to do |format|
      #DB登録し、成功の場合
      if @happy_thing.save
        #htmlのフォーマットを指定し、登録成功ページへ遷移する
        format.html { render :show, status: :created, location: @happy_thing }
      #登録失敗の場合
      else
        #htmlのフォーマットを指定し、new画面へリダイレクトする
        format.html { render :new }
        # format.html { render new: @happy_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /happy_things/1
  # PATCH/PUT /happy_things/1.json
  def update
    respond_to do |format|
      if @happy_thing.update(happy_thing_params)
        format.html { redirect_to @happy_thing, notice: 'Happy thing was successfully updated.' }
        format.json { render :show, status: :ok, location: @happy_thing }
      else
        format.html { render :edit }
        format.json { render json: @happy_thing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /happy_things/1
  # DELETE /happy_things/1.json
  def destroy
    @happy_thing.destroy
    respond_to do |format|
      format.html { redirect_to happy_things_url, notice: 'Happy thing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_happy_thing
      @happy_thing = HappyThing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def happy_thing_params
      params.require(:happy_thing).permit(:happy_things, :user_id)
    end
end
