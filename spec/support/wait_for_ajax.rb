# spec/support/wait_for_ajax.rb
module WaitForAjax
# :nocov:
  def wait_for_ajax
    Timeout.timeout(Capybara.default_max_wait_time) do
      loop until finished_all_ajax_requests?
    end
  end

  def finished_all_ajax_requests?
    page.evaluate_script('jQuery.active').zero?
  end
# :nocov:
end

RSpec.configure do |config|
  config.include WaitForAjax, type: :feature
end
