class PortsController < ApplicationController
  before_action :set_port, only: [:show, :edit, :update, :destroy]

  # GET /ports
  # GET /ports.json
  def index
    @ports = Port.all
    @devices = Device.all
  end

  # GET /ports/1
  # GET /ports/1.json
  def show
  end

  # GET /ports/new
  def new
    @port = Port.new
    @devices = Device.all
  end

  # GET /ports/1/edit
  def edit
  end

  # POST /ports
  # POST /ports.json
  def create
    @port = Port.new(port_params)
    @devices = Device.all

    respond_to do |format|
      if @port.save
        format.html { redirect_to @port, notice: 'Port was successfully created.' }
        format.json { render :show, status: :created, location: @port }
      else
        format.html { render :new }
        format.json { render json: @port.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ports/1
  # PATCH/PUT /ports/1.json
  def update
    respond_to do |format|
      if @port.update(port_params)
        format.html { redirect_to @port, notice: 'Port was successfully updated.' }
        format.json { render :show, status: :ok, location: @port }
      else
        format.html { render :edit }
        format.json { render json: @port.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ports/1
  # DELETE /ports/1.json
  def destroy
    @port.destroy
    respond_to do |format|
      format.html { redirect_to ports_url, notice: 'Port was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_port
      @port = Port.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def port_params
      params.require(:port).permit(:port_type, :signal_type, :port, :port_input, :device_id)
    end
end
