class CommentsController < ApplicationController
  def create
    @job = Job.find(params[:job_id])
    @comment = @job.comments.create(params[:comment].permit(:name, :body))

    redirect_to job_path(@job)
  end

  def destroy
    @job = Job.find(params[:job_id])
    @comment = @job.comments.find(params[:id])
    @comment.destroy

    redirect_to job_path(@job)
  end
end
