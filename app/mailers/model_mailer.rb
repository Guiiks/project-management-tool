class ModelMailer < ActionMailer::Base
  default from: "admin@ibsciss.com"

  def new_project(email)
    mail to: email, subject: "[Ibsciss] New project online"
  end
end