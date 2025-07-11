# My First Rails 8 Blog - Learning Journal

## What We Built
A personal blog application using Ruby on Rails 8 where users can create, read, update, and delete (CRUD) articles.

## Prerequisites
- Linux/WSL environment
- Terminal/Command line access
- Internet connection for downloading Ruby and Rails

## Step-by-Step Guide

### 1. Install Ruby Version Manager (rbenv)
```bash
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
```

### 2. Set Up rbenv in Your Shell
```bash
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
```

### 3. Install Latest Ruby (3.4.4)
```bash
rbenv install 3.4.4
rbenv global 3.4.4
ruby --version  # Should show ruby 3.4.4
```

### 4. Install Rails 8
```bash
gem install rails
rails --version  # Should show Rails 8.0.2
```

### 5. Create New Rails Application
```bash
rails new my_blog --database=sqlite3
cd my_blog
```

### 6. Generate Article Model
```bash
rails generate model Article title:string content:text
rails db:migrate
```

### 7. Generate Articles Controller
```bash
rails generate controller Articles index show new create edit update destroy
```

### 8. Fix Routes Configuration
Edit `config/routes.rb` and replace the individual routes with:
```ruby
resources :articles
```

### 9. Implement Controller Actions
Edit `app/controllers/articles_controller.rb` with proper CRUD logic:

```ruby
class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
```

### 10. Create Views
#### Index View (`app/views/articles/index.html.erb`)
```erb
<h1>Articles</h1>

<%= link_to "New Article", new_article_path %>

<% @articles.each do |article| %>
  <div>
    <h2><%= link_to article.title, article_path(article) %></h2>
    <p><%= truncate(article.content, length: 100) %></p>
  </div>
<% end %>
```

#### Show View (`app/views/articles/show.html.erb`)
```erb
<h1><%= @article.title %></h1>

<p><%= simple_format(@article.content) %></p>

<%= link_to "Edit", edit_article_path(@article) %> |
<%= link_to "Delete", article_path(@article), method: :delete, data: { confirm: "Are you sure?" } %> |
<%= link_to "Back to Articles", articles_path %>
```

#### New Article Form (`app/views/articles/new.html.erb`)
```erb
<h1>New Article</h1>

<%= form_with model: @article do |form| %>
  <div>
    <%= form.label :title %>
    <%= form.text_field :title %>
  </div>

  <div>
    <%= form.label :content %>
    <%= form.text_area :content, rows: 10 %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>

<%= link_to "Back to Articles", articles_path %>
```

#### Edit Article Form (`app/views/articles/edit.html.erb`)
```erb
<h1>Edit Article</h1>

<%= form_with model: @article do |form| %>
  <div>
    <%= form.label :title %>
    <%= form.text_field :title %>
  </div>

  <div>
    <%= form.label :content %>
    <%= form.text_area :content, rows: 10 %>
  </div>

  <div>
    <%= form.submit %>
  </div>
<% end %>

<%= link_to "Show", @article %> |
<%= link_to "Back to Articles", articles_path %>
```

### 11. Start the Server
```bash
rails server
```

Visit `http://127.0.0.1:3000/articles` in your browser.

## What You Learned

### Rails MVC Architecture
- **Model**: Article model handles data and database interactions
- **View**: ERB templates display data to users
- **Controller**: Articles controller handles user requests and coordinates between models and views

### Rails Conventions
- **RESTful routes**: `resources :articles` creates standard CRUD routes
- **Naming conventions**: Controllers are plural, models are singular
- **File organization**: Models in `app/models/`, controllers in `app/controllers/`, views in `app/views/`

### Database Concepts
- **Migrations**: Ruby scripts that modify database schema
- **ActiveRecord**: Rails ORM for database interactions
- **SQLite**: Lightweight database perfect for development

### Rails Features
- **Hot reload**: Code changes are automatically loaded without restarting server
- **Form helpers**: `form_with` generates HTML forms with Rails conventions
- **Strong parameters**: `article_params` method prevents mass assignment vulnerabilities

## Application Features
- ✅ Create new articles
- ✅ View all articles (index page)
- ✅ View individual articles
- ✅ Edit existing articles
- ✅ Delete articles
- ✅ Basic navigation between pages

## File Structure Created
```
my_blog/
├── app/
│   ├── controllers/
│   │   └── articles_controller.rb
│   ├── models/
│   │   └── article.rb
│   └── views/
│       └── articles/
│           ├── index.html.erb
│           ├── show.html.erb
│           ├── new.html.erb
│           └── edit.html.erb
├── config/
│   └── routes.rb
└── db/
    └── migrate/
        └── [timestamp]_create_articles.rb
```

## Commands Summary
```bash
# Setup
rbenv install 3.4.4
rbenv global 3.4.4
gem install rails

# Create app
rails new my_blog --database=sqlite3
cd my_blog

# Generate components
rails generate model Article title:string content:text
rails generate controller Articles index show new create edit update destroy

# Database
rails db:migrate

# Run server
rails server
```

## Next Steps to Consider
1. Add CSS styling for better appearance
2. Add validation to Article model
3. Add user authentication
4. Deploy to production
5. Add comments system
6. Add image uploads
7. Add search functionality

## Rails 8 New Features Used
- Modern Ruby 3.4.4 support
- Enhanced security defaults
- Improved development experience
- Better error handling

This blog application demonstrates all the fundamental Rails concepts and provides a solid foundation for building more complex web applications.