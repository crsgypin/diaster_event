class CommentsController < ApplicationController

	def create
		@event = Event.find(params[:event_id])
		@comment = @event.comments.new(comment_params)
		@comment.user = current_user
		if @comment.save
			flash[:notice] = "you've created one comment"
			redirect_to event_path(@event)
		else
			render 'events/show'
		end

	end

	def update
		@event = Event.find(params[:event_id])
		@comment = @event.comments.find(params[:id])
		if @comment.update(comment_params)
			flash[:notice] = "you've updated one comment"
			redirect_to event_path(@event)
		else
			render 'events/show'
		end
	end

	def destory
		@event = Event.find(params[:event_id])
		@comment = @event.comments.find(params[:id])
		@comment.destry		
	end

private

	def comment_params
		params.require(:comment).permit(:content)

	end

end
