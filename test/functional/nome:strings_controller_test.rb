require 'test_helper'

class Nome:stringsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Nome:string.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Nome:string.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Nome:string.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to nome:string_url(assigns(:nome:string))
  end
  
  def test_edit
    get :edit, :id => Nome:string.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Nome:string.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Nome:string.first
    assert_template 'edit'
  end

  def test_update_valid
    Nome:string.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Nome:string.first
    assert_redirected_to nome:string_url(assigns(:nome:string))
  end
  
  def test_destroy
    nome:string = Nome:string.first
    delete :destroy, :id => nome:string
    assert_redirected_to nome:strings_url
    assert !Nome:string.exists?(nome:string.id)
  end
end
