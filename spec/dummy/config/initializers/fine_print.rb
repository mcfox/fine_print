# Configuration file for the dummy app
FinePrint.configure do |config|
  config.authenticate_manager_proc = lambda { |user| user.try(:is_admin) || head(:forbidden) }

  config.contract_published_proc = lambda { |contract| }
end
