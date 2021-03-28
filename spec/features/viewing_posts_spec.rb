feature 'viewing posts' do
  scenario 'posts appear in reverse chronological order' do
    sign_up

    click_button('New Post')
    attach_file('image', 'spec/files/images/llama.jpeg')
    fill_in('caption', with: 'First post')
    click_button('Create Post')

    click_button('New Post')
    attach_file('image', 'spec/files/images/llama.jpeg')
    fill_in('caption', with: 'Second post')
    click_button('Create Post')

    expect(first('.post')).to have_content('Second post')
    expect(page).to have_content('First post')
  end
end
