class StaticController < ApplicationController
	def home
		@task = task.all
		render template: "task/index"
	end
end