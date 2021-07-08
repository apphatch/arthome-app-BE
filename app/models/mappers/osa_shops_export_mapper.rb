module Mappers
  class OsaShopsExportMapper < BaseMapper
    def apply_each shop
      return [
        shop.try(:importing_id),
        shop.try(:name),
        shop.try(:full_address),
        shop.try(:custom_attributes)
      ]
    end
  end
end
