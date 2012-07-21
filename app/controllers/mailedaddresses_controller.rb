class MailedaddressesController < ApplicationController
  # GET /mailedaddresses
  # GET /mailedaddresses.json
  def index
    @mailedaddresses = Mailedaddress.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mailedaddresses }
    end
  end

  # GET /mailedaddresses/1
  # GET /mailedaddresses/1.json
  def show
    @mailedaddress = Mailedaddress.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mailedaddress }
    end
  end

  # GET /mailedaddresses/new
  # GET /mailedaddresses/new.json
  def new
    @mailedaddress = Mailedaddress.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mailedaddress }
    end
  end

  # GET /mailedaddresses/1/edit
  def edit
    @mailedaddress = Mailedaddress.find(params[:id])
  end

  # POST /mailedaddresses
  # POST /mailedaddresses.json
  def create
    @mailedaddress = Mailedaddress.new(params[:mailedaddress])

    respond_to do |format|
      if @mailedaddress.save
        format.html { redirect_to @mailedaddress, notice: 'Mailedaddress was successfully created.' }
        format.json { render json: @mailedaddress, status: :created, location: @mailedaddress }
      else
        format.html { render action: "new" }
        format.json { render json: @mailedaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mailedaddresses/1
  # PUT /mailedaddresses/1.json
  def update
    @mailedaddress = Mailedaddress.find(params[:id])

    respond_to do |format|
      if @mailedaddress.update_attributes(params[:mailedaddress])
        format.html { redirect_to @mailedaddress, notice: 'Mailedaddress was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mailedaddress.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailedaddresses/1
  # DELETE /mailedaddresses/1.json
  def destroy
    @mailedaddress = Mailedaddress.find(params[:id])
    @mailedaddress.destroy

    respond_to do |format|
      format.html { redirect_to mailedaddresses_url }
      format.json { head :no_content }
    end
  end
end
