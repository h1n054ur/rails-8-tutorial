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

---

## Version 2.0 - Production Blog Tutorial

### What's New in v2.0
This tutorial has been expanded from a simple CRUD blog to a **production-ready blog application** with complete admin authentication, publishing workflow, and professional user experience features.

### Phase-by-Phase Learning Journey

#### Phase 1: Enhanced Article Model ✅
- Added `published` boolean field for draft/published system
- Added `published_at` timestamp for publication tracking
- Enhanced Article model with validation and scopes
- **Learning**: Database migrations, ActiveRecord scopes, model validations

#### Phase 2: Admin Authentication ✅
- Integrated Devise gem for user authentication
- Created User model with admin privileges
- Added admin-only access controls
- **Learning**: Devise authentication, authorization, before_action filters

#### Phase 3: Admin Dashboard ✅
- Built complete admin interface with namespace routing
- Created Admin::ArticlesController for management operations
- Added publish/unpublish functionality
- **Learning**: Namespace routing, Rails controllers, admin interfaces

#### Phase 4: Public Blog Interface ✅
- Separated public and admin interfaces
- Created read-only public blog showing published articles
- Added professional blog styling
- **Learning**: Separation of concerns, public/private interfaces

#### Phase 5: User Experience & Validation ✅
- Added comprehensive flash messages for all admin actions
- Implemented field-specific error handling and validation display
- Added confirmation dialogs for destructive actions
- Enhanced timestamp display throughout admin interface
- Built article preview functionality with custom layout
- **Learning**: User experience design, Rails flash messages, error handling

### Enhanced Features in v2.0
- 🔐 **Admin Authentication** - Secure admin access with Devise
- 📝 **Draft/Published System** - Complete publishing workflow
- 👤 **User Management** - Admin user roles and permissions
- 🎨 **Professional UI** - Clean, responsive admin interface
- 🔍 **Article Preview** - Preview articles before publishing
- ✅ **Validation** - Comprehensive error handling and user feedback
- 🛡️ **Security** - Proper authorization and input validation
- 📊 **Admin Dashboard** - Complete article management interface

### New File Structure
```
app/
├── controllers/
│   ├── admin/
│   │   └── articles_controller.rb  # Admin article management
│   ├── application_controller.rb   # Enhanced with admin helpers
│   └── articles_controller.rb      # Public read-only interface
├── models/
│   ├── article.rb                  # Enhanced with validations/scopes
│   └── user.rb                     # Devise user model
├── views/
│   ├── admin/
│   │   └── articles/              # Complete admin interface
│   ├── layouts/
│   │   ├── application.html.erb   # Enhanced with flash messages
│   │   └── public_preview.html.erb # Preview layout
│   └── articles/                  # Public blog interface
└── ...

config/
├── routes.rb                      # Namespace routing
├── initializers/
│   └── devise.rb                  # Devise configuration
└── ...

db/
├── migrate/
│   ├── *_add_publishing_fields_to_articles.rb
│   ├── *_devise_create_users.rb
│   ├── *_add_admin_to_users.rb
│   └── *_add_user_to_articles.rb
└── ...

docs/
├── journal-v2.md                  # Production blog development
├── journal-v2.1.md               # User experience improvements
└── ...
```

### v2.0 Tech Stack
- **Backend**: Ruby on Rails 8.0.2
- **Authentication**: Devise gem
- **Database**: SQLite3 (development), PostgreSQL (production ready)
- **Frontend**: ERB templates with enhanced styling
- **Authorization**: Admin role-based access control
- **Server**: Puma
- **Ruby**: 3.4.4

### Getting Started with v2.0
```bash
# Setup the enhanced blog
git clone <repository-url>
cd rails-8-tutorial
bundle install
rails db:migrate
rails db:seed  # Creates admin user

# Start development server
rails server

# Access points:
# Public blog: http://localhost:3000
# Admin login: http://localhost:3000/users/sign_in
# Admin dashboard: http://localhost:3000/admin/articles
```

### Default Admin Credentials
```
Email: admin@example.com
Password: password
```

### Learning Outcomes from v2.0
This expanded tutorial teaches:
- **Authentication Systems** - Devise integration and customization
- **Authorization Patterns** - Role-based access control
- **Namespace Routing** - Organizing admin vs public interfaces
- **User Experience Design** - Flash messages, error handling, confirmations
- **Production Patterns** - Publishing workflows, admin interfaces
- **Security Best Practices** - Input validation, authorization checks
- **Rails Conventions** - Following Rails Way for scalable applications

### Documentation for v2.0
- 📖 **journal-v2.md** - Complete production blog development (595 lines)
- 📖 **journal-v2.1.md** - User experience and validation improvements (247 lines)
- 📋 **todo.md** - Updated with phase-based development plan
- 🤖 **CLAUDE.md** - Enhanced AI assistant guidelines

### Next Steps (v3.0)
See `/docs/todo.md` for the roadmap to v3.0 including:
- Comprehensive Rails testing suite
- Production deployment with PostgreSQL
- Advanced features (search, pagination, SEO)
- Modern frontend with Tailwind CSS
- Performance optimization and caching

This tutorial now provides a complete learning path from basic CRUD operations to production-ready Rails applications, following Rails conventions and best practices throughout.

## Contributing
This is a learning project. Feel free to explore, modify, and extend it for your own Rails education.

## License
Open source - feel free to use for learning purposes.
