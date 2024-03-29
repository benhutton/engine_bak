class Locomotive::Translation

  include Locomotive::Mongoid::Document

  ## fields ##
  field :key
  field :values, type: Hash, default: {}

  ## associations ##
  belongs_to :site, class_name: 'Locomotive::Site'

  ## validations ##
  validates_uniqueness_of :key, scope: :site_id
  validates_presence_of 	:site, :key

  ## scopes ##
  scope :ordered, asc(:key)

  ## callbacks ##
	before_validation :underscore_key

	## methods ##

	protected

	# Make sure the translation key is underscored
	# since it is the unique way to use it in a liquid template.
	#
	def underscore_key
		if self.key
			self.key = self.key.permalink.underscore
		end
	end

end
