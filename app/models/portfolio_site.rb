# == Schema Information
#
# Table name: portfolio_sites
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  description    :text
#  screenshot_url :string(255)
#  site_url       :string(255)
#  order          :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class PortfolioSite < ActiveRecord::Base
  attr_accessible :description, :name, :order, :screenshot_url, :site_url

  # default_scope order: 'portfolio_sites.order ASC'
end
