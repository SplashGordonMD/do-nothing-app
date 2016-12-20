Rails.application.routes.draw do
 #  For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #  function changeColors() {
 #  	setTimeout(function() {
 #  	document.getElementById("first").style["color"] = "red"
 #  	}, 2000);
 #  	documents.getElementById("first").style["color"] = "red";
 #  	document.getElementById("second").style["color"] = "blue";
	# }
  get '/' => 'pages#home'
end
