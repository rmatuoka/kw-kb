require 'test_helper'

class JournalistsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Journalist.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Journalist.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Journalist.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to journalist_url(assigns(:journalist))
  end
  
  def test_edit
    get :edit, :id => Journalist.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Journalist.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Journalist.first
    assert_template 'edit'
  end

  def test_update_valid
    Journalist.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Journalist.first
    assert_redirected_to journalist_url(assigns(:journalist))
  end
  
  def test_destroy
    journalist = Journalist.first
    delete :destroy, :id => journalist
    assert_redirected_to journalists_url
    assert !Journalist.exists?(journalist.id)
  end
end
