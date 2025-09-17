class Produto < ApplicationRecord
  has_many :movimentacoes, class_name: "Movimentacao", dependent: :destroy
end

