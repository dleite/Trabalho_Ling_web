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
			
    #@resultado = Agendamento.where("where data = :data and hora >= :hora and hora <= addtime(:hora, tempoconsulta) and id_medico = :id_medico and id_paciente <> :id_paciente",
	#	[params[:data], params[:hora], params[:hora], params[:id_medico], params[:id_paciente]]);
   		
    respond_to do |format|
      
     # unless @resultado
     #  raise "erro ao salvar"
     #  redirect_to :action => 'agendamento_duplicado',  notice: 'Ja existe outro agendamento no mesmo horario.'
     #  flash.now[:error] = "Ja existe outro agendamento no mesmo horario"
     #  render :action => "new"         
     #  return
     # end;
      
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
