class EmployeesController < ApplicationController
    before_action :set_employee, only: %i[ show edit update destroy ]

   def index
       @employees = Employee.all
   end

   def new
       @employee = Employee.new
   end

   def create
   @employee = Employee.new(employee_params)

   respond_to do |format|
     if @employee.save
       format.html { redirect_to @employee, notice: "Employee was successfully created." }
     else
       format.html { render :new, status: :unprocessable_entity }
     end
   end
   end

   def edit
   end

   def update
       respond_to do |format|
           if @employee.update(employee_params)
             format.html { redirect_to @employee, notice: "Employee was successfully updated." }
             format.js
           else
             format.html { render :edit, status: :unprocessable_entity }
           end
       end
   end

   def destroy
       @employee.destroy
           respond_to do |format|
           format.html { redirect_to employees_url, notice: "Employee was successfully destroyed." }
        end
   end

   private

   def set_employee
       @employee = Employee.find(params[:id])
   end

   def employee_params
       params.require(:employee).permit(:first_name,:last_name,:email_address,:phone,:salary,:department_id)
   end
end
