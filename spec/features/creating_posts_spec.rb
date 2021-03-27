feature 'creating posts' do
  scenario 'can create a post with a caption' do
    visit('/')
    click_button('New Post')
    fill_in('caption', with: 'Llama')
    click_button('Create Post')
    expect(page).to have_content('Llama')
    expect(current_path).to eq('/posts')
  end

  xscenario 'can create a post with an image' do
    visit('/')
    click_button('New Post')
    attach_file('Image', 'spec/files/images/llama.jpeg')
    fill_in('caption', with: 'Llama')
    click_button('Create Post')
    expect(page).to have_css('img[src*="llama.jpeg"]')
    expect(page).to have_content('Llama')
    expect(current_path).to eq('/posts')
  end
end
