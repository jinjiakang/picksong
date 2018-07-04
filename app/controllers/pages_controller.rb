class PagesController < ApplicationController
  def index
  end
  def download_csv
  send_file(
    "#{Rails.root}/app/views/pages/test1.csv",
    filename: "test1.csv",
    type: "application/csv"
  )
  end
end
