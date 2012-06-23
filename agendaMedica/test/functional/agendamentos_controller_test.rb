require 'test_helper'

class AgendamentosControllerTest < ActionController::TestCase
  setup do
    @agendamento = agendamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agendamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agendamento" do
    assert_difference('Agendamento.count') do
      post :create, agendamento: { cancelado: @agendamento.cancelado, concluido: @agendamento.concluido, data: @agendamento.data, hora: @agendamento.hora, id: @agendamento.id, id_convenio: @agendamento.id_convenio, id_medico: @agendamento.id_medico, id_paciente: @agendamento.id_paciente, prescricao: @agendamento.prescricao, tempoconsulta: @agendamento.tempoconsulta }
    end

    assert_redirected_to agendamento_path(assigns(:agendamento))
  end

  test "should show agendamento" do
    get :show, id: @agendamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agendamento
    assert_response :success
  end

  test "should update agendamento" do
    put :update, id: @agendamento, agendamento: { cancelado: @agendamento.cancelado, concluido: @agendamento.concluido, data: @agendamento.data, hora: @agendamento.hora, id: @agendamento.id, id_convenio: @agendamento.id_convenio, id_medico: @agendamento.id_medico, id_paciente: @agendamento.id_paciente, prescricao: @agendamento.prescricao, tempoconsulta: @agendamento.tempoconsulta }
    assert_redirected_to agendamento_path(assigns(:agendamento))
  end

  test "should destroy agendamento" do
    assert_difference('Agendamento.count', -1) do
      delete :destroy, id: @agendamento
    end

    assert_redirected_to agendamentos_path
  end
end
