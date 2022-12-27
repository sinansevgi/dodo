class GorevsController < ApplicationController
  before_action :set_gorev, only: %i[ show edit update destroy ]
  before_action :authenticate_kullanici!
  def index
    @gorevs = current_kullanici.gorevs.in_order_of(:durum, %w[false true]).in_order_of(:oncelik, %w[cok_onemli onemli dusuk])
  end

  def show
  end

  def new
    @gorev = current_kullanici.gorevs.build
  end

  def edit
  end

  def create
    @gorev = current_kullanici.gorevs.build(gorev_params)

    respond_to do |format|
      if @gorev.save
        format.turbo_stream
        format.html { redirect_to gorev_url(@gorev), notice: 'Görev başarıyla oluşturuldu' }
      else
        format.turbo_stream { 
          render turbo_stream: turbo_stream.replace("#{helpers.dom_id(@gorev)}_form", partial:
          'form', locals: { gorev: @gorev })}
      end
    end
  end

  def update
    respond_to do |format|
      if @gorev.update(gorev_params)
        format.html { redirect_to gorevs_url }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gorev.destroy

    respond_to do |format|
      format.turbo_stream {
        render turbo_stream: turbo_stream.remove("#{helpers.dom_id(@gorev)}_item")}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gorev
      @gorev = Gorev.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gorev_params
      params.require(:gorev).permit(:isim, :durum, :notlar, :oncelik, :sontarih)
    end
end
