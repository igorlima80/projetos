class Setting < ApplicationRecord
    monetize :fee_with_service_cents
    monetize :fee_without_service_cents
end
