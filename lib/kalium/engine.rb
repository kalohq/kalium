module Kalium
  module Rails
    class Engine < ::Rails::Engine

      initializer 'kalium.assets.precompile' do |app|
        %w(stylesheets images fonts).each do |sub|
          app.config.assets.paths << root.join(sub).to_s
        end
      end

    end
  end
end