module BlacklightGoogleAnalytics
  module ControllerExtraHead
    extend ActiveSupport::Concern
    included do
      before_filter do |controller|
        controller.extra_head_content << render_to_string(:partial => '/layouts/google_analytics')
      end
    end
  end
end
