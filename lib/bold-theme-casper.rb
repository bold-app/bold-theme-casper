module Bold
  module Themes
    module Casper
      class Engine < ::Rails::Engine

        config.to_prepare do

          # Registers the theme under the given id.
          #
          # All view templates for this theme are located in
          # "app/views/themes/<id>", in this case: 'app/views/themes/casper'
          Bold::Theme.register :casper do

            # pretty name to be shown in UI
            name 'Casper'

            # Languages supported by the theme.
            # To add one, create config/locales/xy.yml and add xy here
            locales %i(en de)

            # The homepage template. It does not render body text, but has two
            # custom fields named cover_image and description.
            #
            # This template is located in
            # app/views/themes/casper/homepage.html.haml
            #
            # For the custom fields Bold expects a form partial for the editor
            # view to be located in
            # app/views/themes/casper/fields/_homepage.html.haml
            template :home, for: :homepage,
              fields: %w(cover_image description limit)

            # app/views/themes/casper/post.html.haml
            template :post, fields: %w(cover_image)

            # app/views/themes/casper/page.html.haml
            template :page, fields: %w(cover_image)

            # templates for post listings by tag, author and
            # year/month
            template :tag,      body: false, fields: %w(cover_image)
            template :archive,  body: false, fields: %w(cover_image year_index)
            template :category, body: false, fields: %w(cover_image)
            template :author,   body: false

            # search results page
            template :search,   body: false, fields: %w(cover_image)

            # Declare the main stylesheet and Javascript files of the theme.
            #
            # These can also be sprockets manifest files, which in turn
            # include files from
            # assets/javascripts/{stylesheets,javascripts}/casper/
            #
            assets 'casper.css', 'casper.js'

            # the image formats we use in templates
            image_version :big, width: 1790, quality: 70
            image_version :small, width: 600, quality: 70

          end
        end

      end
    end
  end
end

