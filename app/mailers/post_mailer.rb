class PostMailer < ActionMailer::Base
  default from: "arata.rails.test@gmail.com"
  def post_email(user, project)
    @title = project.name
    mail to: user.email, subject: "記事を投稿しました"
  end
end
