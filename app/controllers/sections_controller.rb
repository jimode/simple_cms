class SectionsController < ApplicationController

	layout 'admin'

	before_filter :confirm_logged_in

	def index
		list
		render('list')
	end

	def list
		@sections = Section.order("sections.position ASC")
	end

	def show
		@section = Section.find(params[:id])
	end

	def new
		@section = Section.new
		@section_count = Section.count + 1		
	end

	def create
		# Instantiate a new object using form parameters
		@section = Section.new(params[:section])
		# Save the object
		@section.save
		if @section.save
			# If save succeeds, redirect to the list action
			redirect_to(action: 'list')
		else
			# If save fails, redisplay the form so user can fix problems
			@section_count = Section.count + 1
			render('new')
		end
	end

	def edit
		@section = Section.find(params[:id])
		@section_count = Section.count
	end

	def update
		@section = Section.find(params[:id])
		if @section.update_attributes(params[:section])
			flash[:notice] = "Section has been updated successfully"
			redirect_to(action: 'show', id: @section.id)
		else
			render('edit')
		end
	end

	def delete
		@section = Section.find(params[:id])
	end

	def destroy
		Section.find(params[:id]).destroy
		flash[:notice] = "Section destroyed"
		redirect_to(action: 'list')
	end
end
