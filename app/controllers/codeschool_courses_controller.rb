class CodeschoolCoursesController < ApplicationController
  # GET /codeschool_courses
  # GET /codeschool_courses.json
  def index
    @codeschool_courses = CodeschoolCourse.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @codeschool_courses }
    end
  end

  # GET /codeschool_courses/1
  # GET /codeschool_courses/1.json
  def show
    @codeschool_course = CodeschoolCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @codeschool_course }
    end
  end

  # GET /codeschool_courses/new
  # GET /codeschool_courses/new.json
  def new
    @codeschool_course = CodeschoolCourse.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @codeschool_course }
    end
  end

  # GET /codeschool_courses/1/edit
  def edit
    @codeschool_course = CodeschoolCourse.find(params[:id])
  end

  # POST /codeschool_courses
  # POST /codeschool_courses.json
  def create
    @codeschool_course = CodeschoolCourse.new(params[:codeschool_course])

    respond_to do |format|
      if @codeschool_course.save
        format.html { redirect_to @codeschool_course, notice: 'Codeschool course was successfully created.' }
        format.json { render json: @codeschool_course, status: :created, location: @codeschool_course }
      else
        format.html { render action: "new" }
        format.json { render json: @codeschool_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /codeschool_courses/1
  # PUT /codeschool_courses/1.json
  def update
    @codeschool_course = CodeschoolCourse.find(params[:id])

    respond_to do |format|
      if @codeschool_course.update_attributes(params[:codeschool_course])
        format.html { redirect_to @codeschool_course, notice: 'Codeschool course was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @codeschool_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /codeschool_courses/1
  # DELETE /codeschool_courses/1.json
  def destroy
    @codeschool_course = CodeschoolCourse.find(params[:id])
    @codeschool_course.destroy

    respond_to do |format|
      format.html { redirect_to codeschool_courses_url }
      format.json { head :no_content }
    end
  end
end
