require 'test_helper'

class CasperTest < ThemeIntegrationTest

  setup do
    setup_site 'casper'
  end

  test 'theme structure' do
    assert theme = Bold::Theme['casper']
    assert tpl = theme.homepage_template
    assert_equal :home, tpl.key
  end

  test 'check special pages' do
    check_special_pages
  end

  test 'should show homepage and post' do
    check_home_page_and_post
  end

  test 'should show page' do
    check_shows_page
  end

  test 'should list posts' do
    check_archive
    check_tags
    check_author_listing
  end
end

