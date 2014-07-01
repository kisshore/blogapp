class ArticlesController < ApplicationController
  def index
  end

  def showall
    @all = Article.all
  end
  
  def create_article
    
  end
  
  def creating
    hi_params = params.require(:article).permit(:title, :text)
    Article.create(:title => hi_params[:title], :story =>  hi_params[:title] )
    redirect_to :back
  end
  
  
  def edit
    @art = Article.find(params[:id])
  end
  
  def update
    @art = Article.find(params[:id])
   hi_params = params.require(:article).permit(:title, :text)
    @art.update(:title => hi_params[:title], :story =>  hi_params[:title]  )
    redirect_to @art
  end
  
  
end
