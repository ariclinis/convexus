class Entidade < ApplicationRecord
	
	has_attached_file :asset, :styles => { :medium => "400x400>", :thumb => "100x100>" }
	validates_presence_of :nome, message: 'não pode ser deixado em branco'
	validates_length_of :nome, minimum: 2, message: 'deve ter pelo menos 3 caracteres'
	validates_uniqueness_of :nome, message: 'Esta entidade já existe'
	mount_uploader :foto, FotoUploader
end
