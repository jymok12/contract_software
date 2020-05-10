class PeopleController < ApplicationController
    def index
        @people = Person.all
    end

    def show
        @person = Person.find(params[:id])
    end

    def new
        @person = Person.new
    end

    def create
        @person = Person.new(person_params)

        if params[:next_step]
            redirect_to roomid_people_path
        
        elsif @person.save
            redirect_to @person

        else
            render 'new'
        end
    end

    def edit
        @person = Person.find(params[:id])
    end

    def update
        @person = Person.find(params[:id])

        if @person.update(person_params)
            redirect_to @person
        else
            render 'edit'
        end
    end

    def destroy
        @person = Person.find(params[:id])
        @person.destroy
        
        redirect_to people_path
    end
private
    def person_params
        params.require(:person).permit(:customer, :date, :jobsite, :attn, :phone, :email, :next_step, :gender, :choice)
    end
end

