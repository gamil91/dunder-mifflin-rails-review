class EmployeesController < ApplicationController

    before_action :get_employee, only:[:show, :edit, :update, :delete]

    def index
        @employees = Employee.all
    end

    def show
        
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        if @employee.valid?
            @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    def edit
        
    end

    def update
        if @employee.update(employee_params)
            redirect_to @employee
        else
            render :edit
        end
    end

    def destroy
        
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

    def get_employee
        @employee = Employee.find(params[:id])
    end

end
