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

require 'spec_helper'

describe PortfolioSite do
  pending "add some examples to (or delete) #{__FILE__}"
end
