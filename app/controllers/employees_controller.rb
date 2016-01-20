class EmployeesController < ApplicationController

	def index
		@employee = Employee.all
end

	def show
		@employee = Employee.find_by(id: params[:id])

	end

	def new
	end

	def create
				@employee = Employee.create({first_name: params[:first_name],
										last_name: params[:last_name],
										job_title: params[:job_title],
										phone_number: params[:phone_number]})

		redirect_to "/employees"
	end

	def edit
		@employee = Employee.find_by(id: params[:id])
	end

	def update
		@employee = Employee.find_by(id: params[:id])

		@product.update({first_name: params[:first_name],
								last_name: params[:last_name],
								job_title: params[:job_title],
								phone_number: params[:phone_number]})

		redirect_to "/employees/#{@employee.id}"
	end

	def destroy
		@employee = Employee.find_by(id: params[:id])
		@employee.destroy

		redirect_to "/employees"
	end

end
