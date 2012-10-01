require 'test_helper'

class NegociosControllerTest < ActionController::TestCase
  setup do
    @negocio = negocios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:negocios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create negocio" do
    assert_difference('Negocio.count') do
      post :create, negocio: { descripcion: @negocio.descripcion, direccion: @negocio.direccion, horarios: @negocio.horarios, localidad: @negocio.localidad, nombre: @negocio.nombre, telefono: @negocio.telefono, www: @negocio.www }
    end

    assert_redirected_to negocio_path(assigns(:negocio))
  end

  test "should show negocio" do
    get :show, id: @negocio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @negocio
    assert_response :success
  end

  test "should update negocio" do
    put :update, id: @negocio, negocio: { descripcion: @negocio.descripcion, direccion: @negocio.direccion, horarios: @negocio.horarios, localidad: @negocio.localidad, nombre: @negocio.nombre, telefono: @negocio.telefono, www: @negocio.www }
    assert_redirected_to negocio_path(assigns(:negocio))
  end

  test "should destroy negocio" do
    assert_difference('Negocio.count', -1) do
      delete :destroy, id: @negocio
    end

    assert_redirected_to negocios_path
  end
end
