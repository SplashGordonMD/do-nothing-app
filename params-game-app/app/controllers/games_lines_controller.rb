class GamesLinesController < ApplicationController
  def query_params_method
    @message = params["my_message"]
    @message2 = params["another_message"]
    render 'query_params.html.erb'
  end
  def url_segment_params_method
    @value = params["this_is_a_varible"]
    render 'url_segment_params.html.erb'
  end
  def form_params_method
    render 'form.html.erb'
  end

  def form_result_method
    @value = params["form_message"]
    render 'form_result.htlm.erb'
  end
end