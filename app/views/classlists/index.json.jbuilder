json.array!(@orderlists) do |orderlist|
  json.extract! orderlist, :id, :pickup, :deadline, :rushnote, :ordernumber, :category, :gold, :size, :quantity, :description, :picture, :caddesigners, :string, :setters, :status_factory, :status_shipping, :customer_name, :customer_phone, :itemnumber, :invoicenumber, :picture2, picture3, :picture4, :stocknumber, :created_at, :updated_at, :order_of, :customer_id
  json.url orderlist_url(orderlist, format: :json)
end
