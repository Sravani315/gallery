class User < ApplicationRecord
	mount_uploaders :attachments, AttachmentsUploader

	validates :name, presence: true
end
