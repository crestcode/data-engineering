class DataImporterController < ApplicationController

  def index
  end

  def create
    begin
      total_amount_gross_revenue = DataImporter.import(params['purchases_file'].path)
      redirect_to action: index, notice: "File was successfully imported. Total amount gross revenue: #{view_context.number_to_currency(total_amount_gross_revenue)}"
    rescue Exception => e
      logger.error "!!! Import failed. Error: #{e.message}"
      redirect_to action: index, error: 'Import failed. Please make sure your file is properly formatted.'
    end

  end

end
