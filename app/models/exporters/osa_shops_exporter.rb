module Exporters
  class OsaShopsExporter < BaseExporter
    def initialize params={}
      super params
    end

    def export
      set_headers [
        'Importing ID', 'Name', 'Address', 'Custom Attributes'
      ]

      mapper = Mappers::OsaShopsExportMapper.new locale: @params[:locale]
      set_data mapper.map( Shop.all.with_app_group('osa') ).compact

      super
    end
  end
end
