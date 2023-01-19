class Public::TimelineController < ApplicationController
  def index
    # .where~をモデルの検索メソッドにいれたほうが方がよさそう
    @outputs = Output.all.where(release: 'release')
    @outputs = Outputt.search(params[:keyword])
  end
end
