class QuizController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    question = params[:question]
    id = params[:id]
    level = params[:level].to_i

    case level
    when 1
      answer = Poem.select('title').find_by('text LIKE ?', "%#{question}%")
      answer = answer.nil? ? 'can\'t find' : answer[:title]
    end

    uri = URI('http://pushkin.rubyroidlabs.com/quiz')
    parameters = {
      answer: answer,
      token: '0c68cd6461212cdc4b3694ca2df80d51',
      task_id: id
    }
    response = Net::HTTP.post_form(uri, parameters)
    render json: 'done'
    Result.create question: question, question_id: id, level: level, answer: answer

  end
end
