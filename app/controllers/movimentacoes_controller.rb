class MovimentacoesController < ApplicationController
  before_action :set_produto

  def index
    @movimentacoes = @produto.movimentacoes
  end

  def new
    @movimentacao = @produto.movimentacoes.new
  end

  def create
    @movimentacao = @produto.movimentacoes.new(movimentacao_params)
    @movimentacao.data = Time.now

    if @movimentacao.tipo == "Entrada"
      @produto.quantidade += @movimentacao.quantidade
    elsif @movimentacao.tipo == "Saída"
      if @movimentacao.quantidade > @produto.quantidade
        flash[:alert] = "Erro: não há estoque suficiente para essa saída."
        render :new and return
      else
        @produto.quantidade -= @movimentacao.quantidade
      end
    end

    ActiveRecord::Base.transaction do
      @produto.save!
      @movimentacao.save!
    end

    redirect_to produto_movimentacoes_path(@produto), notice: "Movimentação registrada!"
  end

  private

  def set_produto
    @produto = Produto.find(params[:produto_id])
  end

  def movimentacao_params
    params.require(:movimentacao).permit(:tipo, :quantidade)
  end
end
