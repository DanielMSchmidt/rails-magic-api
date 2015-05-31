class Session < ActiveRecord::Base
  has_many :players

  validates_presence_of :identifier
  validates_uniqueness_of :identifier

  def self.newInstance
    @session = Session.new(identifier: rand(36**8).to_s(36))

    if @session.save
      @session
    else
      self.newInstance
    end
  end
end
