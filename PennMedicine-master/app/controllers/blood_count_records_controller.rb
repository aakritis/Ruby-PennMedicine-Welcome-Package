class BloodCountRecordsController < ApplicationController
  before_action :set_blood_count_record, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /blood_count_records
  # GET /blood_count_records.json
  @@user = 0
  def index
    @@user = current_user.id
    #print @@user
    #@blood_count_records = BloodCountRecord.all
    #@blood_count_records = BloodCountRecord.find(user)
    @blood_count_records = BloodCountRecord.where(user_id: @@user)
    print @blood_count_records
  end

  # GET /blood_count_records/1
  # GET /blood_count_records/1.json
  def show
  end

  # GET /blood_count_records/new
  def new
    @blood_count_record = BloodCountRecord.new
  end

  # GET /blood_count_records/1/edit
  def edit
  end

  # POST /blood_count_records
  # POST /blood_count_records.json
  def create
    @blood_count_record = BloodCountRecord.new(blood_count_record_params)
    #blood_count_record = params[:blood_count_record]
    #puts @blood_count_params
    #@blood_count_record = BloodCountRecord.new
    #@blood_count_record.date(1i) = @blood_count_params[:date(1i)]
    #@blood_count_record.date(2i) = @blood_count_params[:date(2i)]
    #@blood_count_record.date(3i) = @blood_count_params[:date(3i)]
    #@blood_count_record.date = blood_count_record[:date]
    #@blood_count_record.day = blood_count_record[:day]
    #@blood_count_record.wbc = blood_count_record[:wbc]
    #@blood_count_record.anc = blood_count_record[:anc]
    #@blood_count_record.hgb = blood_count_record[:hgb]
    #@blood_count_record.plt = blood_count_record[:plt]
    #@blood_count_record.transfusions = blood_count_record[:transfusions]
    #@blood_count_record.user_id = @@user
    respond_to do |format|
      if @blood_count_record.save
        format.html { redirect_to @blood_count_record, notice: 'Blood count record was successfully created.' }
        format.json { render :show, status: :created, location: @blood_count_record }
      else
        format.html { render :new }
        format.json { render json: @blood_count_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blood_count_records/1
  # PATCH/PUT /blood_count_records/1.json
  def update
    respond_to do |format|
      if @blood_count_record.update(blood_count_record_params)
        format.html { redirect_to @blood_count_record, notice: 'Blood count record was successfully updated.' }
        format.json { render :show, status: :ok, location: @blood_count_record }
      else
        format.html { render :edit }
        format.json { render json: @blood_count_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blood_count_records/1
  # DELETE /blood_count_records/1.json
  def destroy
    @blood_count_record.destroy
    respond_to do |format|
      format.html { redirect_to blood_count_records_url, notice: 'Blood count record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blood_count_record
      @blood_count_record = BloodCountRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def blood_count_record_params
      params.require(:blood_count_record).permit(:date, :day, :wbc, :anc, :hgb, :plt, :transfusions, :user_id)
    end
end
