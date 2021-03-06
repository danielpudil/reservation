module Admin
  class LessonsController < Admin::AdminController
    before_action :set_lesson, only: [:show, :edit, :update, :destroy]

    # GET /lessons
    # GET /lessons.json
    def index
      @lessons = Lesson.all
      @firstDay = Date.today.beginning_of_week.strftime('%d/%m/%Y')
      @lastDay = Date.today.end_of_week.strftime('%d/%m/%Y')
    end

    # GET /lessons/1
    # GET /lessons/1.json
    def show
      roomid = params[:id]
      @lesson = Lesson.where(room_id: roomid).sort_by &:start_at
      @roomTitle = Room.find(roomid).title
      @firstDay = Date.today.beginning_of_week.strftime('%d/%m/%Y')
      @lastDay = Date.today.end_of_week.strftime('%d/%m/%Y')
      @full = nil
    end

    # GET /lessons/new
    def new
      @lesson = Lesson.new
    end

    # GET /lessons/1/edit
    def edit
    end

    # POST /lessons
    # POST /lessons.json
    def create
      @lesson = Lesson.new(lesson_params)

      if @lesson.save
        redirect_to admin_lessons_path, notice: 'Lesson was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /lessons/1
    # PATCH/PUT /lessons/1.json
    def update
      if @lesson.update(lesson_params)
        redirect_to admin_lessons_path, notice: 'Lesson was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /lessons/1
    # DELETE /lessons/1.json
    def destroy
      @lesson.destroy(params[:id])
      redirect_to admin_lessons_path, notice: 'Lesson was successfully destroyed.'
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end



    # Never trust parameters from the scary internet, only allow the white list through.
    def lesson_params
      params.require(:lesson).permit(:start_at, :end_at, :durration , :room_id, :teacher_id, :course_id)
    end
  end
end





