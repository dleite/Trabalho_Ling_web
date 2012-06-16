
class AgendamentosController < ApplicationController
  # GET /agendamentos
  # GET /agendamentos.json
  def index
    @agendamentos = Agendamento.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @agendamentos }
    end
  end

  # GET /agendamentos/1
  # GET /agendamentos/1.json
  def show
    @agendamento = Agendamento.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @agendamento }
    end
  end

  # GET /agendamentos/new
  # GET /agendamentos/new.json
  def new
    @agendamento = Agendamento.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @agendamento }
    end
  end

  # GET /agendamentos/1/edit
  def edit
    @agendamento = Agendamento.find(params[:id])
  end

  # POST /agendamentos
  # POST /agendamentos.json
  def create
    @agendamento = Agendamento.new(params[:agendamento])

    respond_to do |format|
      if @agendamento.save
        format.html { redirect_to @agendamento, notice: 'Agendamento was successfully created.' }
        format.json { render json: @agendamento, status: :created, location: @agendamento }
      else
        format.html { render action: "new" }
        format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /agendamentos/1
  # PUT /agendamentos/1.json
  def update
    @agendamento = Agendamento.find(params[:id])

    respond_to do |format|
      if @agendamento.update_attributes(params[:agendamento])
        format.html { redirect_to @agendamento, notice: 'Agendamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @agendamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /agendamentos/1
  # DELETE /agendamentos/1.json
  def destroy
    @agendamento = Agendamento.find(params[:id])
    @agendamento.destroy

    respond_to do |format|
      format.html { redirect_to agendamentos_url }
      format.json { head :no_content }
    end
  end
end
