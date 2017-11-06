get '/' do
	page 'index', {
		active_projects: active_projects,
		prepared_projects: prepared_projects,
		done_projects: done_projects
	}
end

get '/about' do
	page 'about'
end

get '/login' do
	page 'login'
end

get '/project-:id' do
	page 'project'
end

get '/register' do
	page 'register'
end

get '/registerProject' do
	page 'registerProject'
end

get '/restorePass' do
	page 'restorePass'
end

get '/term' do
	page 'term'
end

get '/profile-:id' do
	inner_page 'profile', 'login'
end

get '/projectConstructor-:id' do
	inner_page 'projectConstructor', 'login'
end

not_found do
	status 404
	page 'error404'
end

post '/api' do
	# TODO

	success
end