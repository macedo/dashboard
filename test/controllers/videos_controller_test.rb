class VideosControllerTest < ActionController::TestCase
  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:videos)
  end

  test 'should get new' do
    get :new
    assert_template :new
    assert_not_nil assigns(:video)
  end

  test 'should create new video' do
    assert_difference('Video.count') do
      post :create, video: { source: 'video.mp4' }
    end
    assert_redirected_to video_path(assigns(:video))
    assert_equal 'Video was successfully created.', flash[:notice]
  end

  test 'should not create new video and render new' do
    assert_no_difference('Video.count') do
      post :create, video: { source: '' }
    end

    assert_template :new
  end

  test 'should get show' do
    get :show, id: Video.last.id
    assert_not_nil assigns(:video)
  end
end
