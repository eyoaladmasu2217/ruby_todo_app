class ApplicationController < ActionController::Base

  before_action :track_last_visited
  before_action :track_visit_counts

  private

  def track_last_visited
    @last_visited = session[:last_visited]
    session[:last_visited] = Time.current
    
  end

  def track_visit_counts
    session[:visit_count] ||= 0
    session[:visit_count] += 1

    page_key = "page_visits_#{request.path}"
    session[page_key] ||= 0
    session[page_key] += 1
  end

  allow_browser versions: :modern
end