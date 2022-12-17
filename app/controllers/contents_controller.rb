class ContentsController < ApplicationController

	def index
		#binding.pry
		@contents = Content.all.desc(:created_at)
		@con = Content.new
		@c = []
		#@contents = Content.tagged_with_all(/#{params[:q]}/)
		#@conc = content_to_hash(@content_selected)
	end


	def show
		@content = Content.find(params[:id])
	end

	def new
		@content = Content.new
		@con = []
	end

	def details
		@content = Content.find(params[:id])
		respond_to do |format|
			format.js {}
		end
	end

	def create
		@content = Content.new(content_params_input)
		@content.image_file_name = @content.title

		if @content.save
			ImageWorker.perform_async(@content.id.to_s)
			respond_to do |format|
				format.html {redirect_to contents_path}
			end
		else
			respond_to do |format|
				format.html { render action: 'new' }

			end
		end
	end

	def edit
		@content = Content.find(params[:id])
	end

	def destroy
		@content = Content.where(id: params[:id]).first

		if @content.destroy
			redirect_to contents_path
		else
			#flash[:notice] = ' not deleted'
			flash.now[:error] = @content.errors.messages
			render action: 'index'
		end
	end


	def update
		@content = Content.find(params[:id])
		@con = @content.tags.split(",")
		@con = tags_to_hash(@con)
		if @content.update_attributes(content_params_input)
			redirect_to contents_path
		else
			render action: 'edit'
		end
	end

	def tags
		@contents = Content.tagged_with_all(/#{params[:q]}/)
		@tags = @contents.collect(&:tag_map).flatten.select{|t| t[:name] =~ /#{params[:q]}/}

		respond_to do |format|
			format.html {render html: @tags}
			format.json { render json: @tags}
		end
	end

	def content_ids
		@tags_selected = Content.tags.select{|e| e =~ /#{params[:q]}/}
		@content_selected = Content.where(:tags_array.in => @tags_selected).to_a

		respond_to do |format|
			format.html
			format.json {render json: @content_selected}
		end
	end

	private
	def content_params_input
		params.require(:content).permit(:url,:photo, :title, :tags, :rates, :user_id)
	end

	def tags_to_hash(cons)
		cons.map do |con|
			{id: con, name: con}
		end
	end
#not required************************************

	def content_to_hash(cons)
			cons.map do |cons|
				{id: cons[:_id].to_s, url: cons.url, title: cons.title, photo_url:cons.photo.url}
			end
			#binding.pry
	end
end
