module ApplicationHelper
  
  def find_city_state_name(zip_code)
   	address = ZipCodes.identify(zip_code)
    address[:city] + address[:state_name] if address.present?
  end

  def bootstrap_class_for(flash_type)
    {
      success: "alert-success",
      error: "alert-danger",
      alert: "alert-warning",
      notice: "alert-info"
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end
  
end
