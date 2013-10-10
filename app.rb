# encoding: utf-8

require 'config/database'
require 'config/dictionary'

set :public_folder, File.dirname(__FILE__) + "/public"

helpers do

  def protected!
    unless authorized?
      response['WWW-Authenticate'] = %(Basic realm="Restricted Area")
      throw(:halt, [401, "Not authorized\n"])
    end
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? && @auth.basic? && @auth.credentials && @auth.credentials == ['smile', 'veDmyKiev114']
  end

end

get "/" do
  File.read("public/index.html")
end

post "/question" do
  ip = env["HTTP_X_REAL_IP"] || env["REMOTE_ADDR"]
  Log.create(text: params[:text], ip: ip)

  text = params[:text]
  text = UnicodeUtils.downcase(text)
  text.gsub!(/(\.|,|\?|!|;|:|\'|\"|-|–|—)/, '')
  text.gsub!(/\s+/, ' ')
  text.gsub!(/^\s/, '')
  text.gsub!(/\s$/, '')

  if question = Question.find_by_text(text)
    question.answer
  elsif INSULTS.has_key?(text)
    INSULTS[text]
  else
    result = DEFAULTS[rand(DEFAULTS.length)]

    INSULTS_REGEXP.each_pair do |k, v|
      if k.match(text)
        result = v
      end
    end

    result
  end
end

get "/show" do
  protected!
  @questions = Question.all
  erb :show
end

get "/new" do
  protected!
  erb :new
end

post "/create" do
  protected!
  Question.create(params[:question])
  redirect "/show"
end

get "/:id/delete" do
  protected!
  Question.find(params[:id]).destroy
  redirect "/show"
end

get "/log" do
  protected!
  @log = Log.all
  erb :log
end