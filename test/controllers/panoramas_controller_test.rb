require 'test_helper'

class PanoramasControllerTest < ActionController::TestCase
  setup do
    @panorama = panoramas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:panoramas)
  end

  test "should get new" do
    session[:user_id] = users(:one).id
    get :new
    assert_response :success
  end

  test "should create panorama" do
    image = fixture_file_upload("image.jpg", "image/jpeg")
    session[:user_id] = users(:one).id
    assert_difference('Panorama.count') do
      post :create, panorama: { center: @panorama.center, copyright: @panorama.copyright, description: @panorama.description, heading: @panorama.heading, image: image, title: @panorama.title }
    end
 
    assert_redirected_to panorama_path(assigns(:panorama))
  end

  test "should show panorama" do
    get :show, id: @panorama
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @panorama
    assert_response :success
  end

  test "should update panorama" do
    image = fixture_file_upload("image.jpg", "image/jpeg")
    patch :update, id: @panorama, panorama: { center: @panorama.center, copyright: @panorama.copyright, description: @panorama.description, heading: @panorama.heading, image: image, title: @panorama.title }
    assert_redirected_to panorama_path(assigns(:panorama))
  end

  test "should destroy panorama" do
    session[:user_id] = users(:one).id
    @panorama = Panorama.create!(title: "abc", center: 0, image: fixture_file_upload("image.jpg", "image/jpeg"), user_id: users(:one).id)
    assert_difference('Panorama.count', -1) do
      delete :destroy, id: @panorama
    end

    assert_redirected_to panoramas_path
  end
end
