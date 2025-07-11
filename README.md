# My First Rails 8 Blog

A personal blog application built with Ruby on Rails 8 for learning web development fundamentals.

## Quick Start

### Prerequisites
- Ruby 3.4.4 (managed with rbenv)
- Rails 8.0.2
- SQLite3

### Setup
```bash
# Clone and setup
git clone <repository-url>
cd my_blog
bundle install
rails db:migrate

# Start development server
rails server
```

Visit `http://localhost:3000/articles` to see your blog.

## Features
- ✅ Create, read, update, delete articles
- ✅ Simple and clean interface
- ✅ SQLite database for development
- ✅ Rails 8 with modern Ruby 3.4.4

## Project Structure
- **Models**: Article model with title and content
- **Controllers**: Articles controller with full CRUD operations
- **Views**: ERB templates for all article operations
- **Database**: SQLite3 with versioned migrations

## Documentation
- 📚 `/docs/` - Comprehensive learning documentation
- 📋 `/docs/todo.md` - Development roadmap and next steps
- 📖 `/docs/journal-v1.md` - Detailed learning journey
- 🤖 `/CLAUDE.md` - AI assistant development guidelines

## Development Commands
```bash
# Generate new components
rails generate model ModelName field:type
rails generate controller ControllerName actions

# Database operations
rails db:create
rails db:migrate
rails db:seed

# Testing
rails test

# Console for debugging
rails console
```

## Tech Stack
- **Backend**: Ruby on Rails 8.0.2
- **Database**: SQLite3 (development), PostgreSQL (production ready)
- **Frontend**: ERB templates with Rails helpers
- **Server**: Puma
- **Ruby**: 3.4.4

## Learning Objectives
This project demonstrates:
- Rails MVC architecture
- RESTful routing and CRUD operations
- ActiveRecord ORM and migrations
- Form handling and validation
- Rails conventions and best practices

## Next Steps
See `/docs/todo.md` for comprehensive development roadmap including:
- User authentication
- CSS styling and UI improvements
- Advanced features (search, comments, categories)
- Testing and deployment strategies

## Contributing
This is a learning project. Feel free to explore, modify, and extend it for your own Rails education.

## License
Open source - feel free to use for learning purposes.
