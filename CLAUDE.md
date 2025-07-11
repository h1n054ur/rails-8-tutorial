# Claude AI Assistant Instructions for Rails Development

## Project Context
This is a Ruby on Rails 8.0.2 learning project - a personal blog application built for educational purposes. The developer is a beginner learning Rails fundamentals through hands-on development.

## Primary Goals
1. **Education First**: Prioritize learning over complex solutions
2. **Best Practices**: Follow Rails conventions and modern Ruby practices
3. **Incremental Progress**: Build features step-by-step with clear explanations
4. **Documentation**: Maintain clear documentation for future reference

## Development Environment
- **Ruby Version**: 3.4.4 (managed with rbenv)
- **Rails Version**: 8.0.2
- **Database**: SQLite3 (development), PostgreSQL (production planning)
- **Operating System**: Linux/WSL2
- **Server**: Puma (Rails default)

## Project Structure Guidelines

### Documentation Organization
- `/docs/` - All documentation files
- `/docs/journal-v*.md` - Versioned learning journals (max 500 lines each)
- `/docs/todo.md` - Comprehensive todo list with priorities
- `/docs/README.md` - Documentation index
- `/CLAUDE.md` - This file (AI assistant instructions)

### Code Organization
- Follow Rails conventions strictly
- Use descriptive variable and method names
- Comment complex logic for learning purposes
- Maintain clean, readable code structure

## Development Workflow

### Feature Development Process
1. **Planning**: Update todo.md with specific tasks
2. **Implementation**: Code with explanations for educational value
3. **Testing**: Manual testing followed by automated tests
4. **Documentation**: Update relevant journal version
5. **Cleanup**: Refactor and optimize if needed

### Version Control Strategy
- Use meaningful commit messages
- Create feature branches for major changes
- Document breaking changes in journal
- Tag major milestones

## Rails-Specific Guidelines

### Model Best Practices
- Use ActiveRecord validations extensively
- Implement proper associations (has_many, belongs_to)
- Add database indexes for performance
- Use strong parameters consistently

### Controller Best Practices
- Keep controllers thin, move logic to models
- Use before_actions for common operations
- Implement proper error handling
- Follow RESTful conventions

### View Best Practices
- Use Rails helpers and partials
- Implement responsive design
- Keep logic out of views
- Use semantic HTML

### Security Considerations
- Always use strong parameters
- Implement CSRF protection
- Validate all user inputs
- Use Rails built-in security features

## Testing Strategy

### Test Types to Implement
- **Unit Tests**: Model validations and methods
- **Integration Tests**: Controller actions and routes
- **System Tests**: Full user workflows
- **Security Tests**: Input validation and authorization

### Testing Tools
- **Primary**: Rails built-in testing (Minitest)
- **Alternative**: RSpec (if developer prefers)
- **Coverage**: SimpleCov for test coverage
- **Security**: Brakeman for security scanning

## Performance Guidelines

### Database Optimization
- Use database indexes appropriately
- Implement query optimization (N+1 prevention)
- Use database-level constraints
- Plan for scalability from the start

### Caching Strategy
- Page caching for static content
- Fragment caching for dynamic content
- Database query caching
- Asset pipeline optimization

## Deployment Considerations

### Development to Production Path
1. **Local Development**: SQLite + Rails server
2. **Staging**: PostgreSQL + production-like environment
3. **Production**: Cloud hosting with monitoring

### Deployment Platforms (in order of recommendation)
1. **Heroku**: Easiest for beginners
2. **DigitalOcean**: Good balance of simplicity and control
3. **AWS**: Most powerful but complex
4. **Render**: Modern alternative to Heroku

## Learning Progression

### Phase 1: Foundation (Current)
- Basic CRUD operations
- Rails MVC understanding
- Database fundamentals
- Form handling and validation

### Phase 2: Intermediate
- User authentication (Devise)
- Authorization and permissions
- File uploads and processing
- Background jobs

### Phase 3: Advanced
- API development
- Real-time features (ActionCable)
- Performance optimization
- Production deployment

## Code Quality Standards

### Ruby Style Guide
- Follow community Ruby style guide
- Use RuboCop for linting
- Maintain consistent indentation (2 spaces)
- Use meaningful method and variable names

### Rails Conventions
- Use Rails naming conventions strictly
- Follow RESTful route patterns
- Implement proper error handling
- Use Rails helpers and built-in methods

## Common Commands Reference

### Development Commands
```bash
# Start development server
rails server

# Generate new components
rails generate model ModelName field:type
rails generate controller ControllerName actions
rails generate migration MigrationName

# Database operations
rails db:create
rails db:migrate
rails db:seed
rails db:rollback

# Testing
rails test
rails test:system

# Console for debugging
rails console
```

### Production Commands
```bash
# Precompile assets
rails assets:precompile

# Database setup in production
RAILS_ENV=production rails db:create
RAILS_ENV=production rails db:migrate

# Check production readiness
rails app:update
```

## Debugging Guidelines

### Common Issues and Solutions
- **Server won't start**: Check for syntax errors, missing gems
- **Database errors**: Run migrations, check database.yml
- **Routing errors**: Check routes.rb, use `rails routes`
- **View errors**: Check file names, variable scope

### Debugging Tools
- **Rails Console**: Interactive Ruby environment
- **Rails Logger**: Built-in logging system
- **Pry**: Advanced debugging gem
- **Better Errors**: Enhanced error pages

## AI Assistant Specific Instructions

### Response Guidelines
- **Explain WHY**: Always explain the reasoning behind suggestions
- **Show Examples**: Provide concrete code examples
- **Reference Documentation**: Link to Rails guides when applicable
- **Safety First**: Emphasize security and best practices

### Code Generation Rules
- Generate complete, working code
- Include error handling
- Add comments for educational value
- Follow Rails conventions strictly

### Learning Support
- Break complex topics into digestible pieces
- Provide multiple implementation approaches when beneficial
- Suggest related topics to explore
- Encourage experimentation in safe environments

## Resource References

### Essential Rails Resources
- [Rails Guides](https://guides.rubyonrails.org/) - Official documentation
- [Rails API](https://api.rubyonrails.org/) - Complete API reference
- [Ruby Style Guide](https://rubystyle.guide/) - Community style standards
- [Rails Security Guide](https://guides.rubyonrails.org/security.html) - Security best practices

### Learning Resources
- [Rails Tutorial](https://www.railstutorial.org/) - Comprehensive tutorial
- [GoRails](https://gorails.com/) - Video tutorials
- [Rails Casts](http://railscasts.com/) - Legacy but valuable screencasts
- [The Rails Way](https://leanpub.com/therailsway) - Advanced concepts

## Project Maintenance

### Regular Tasks
- Update dependencies monthly
- Review and update documentation
- Run security scans
- Monitor application performance

### Version Updates
- Test in development before production
- Review breaking changes
- Update documentation
- Plan rollback strategy

## Success Metrics

### Learning Objectives
- Understand Rails MVC architecture
- Implement CRUD operations confidently
- Apply Rails conventions consistently
- Deploy applications successfully

### Code Quality Metrics
- Test coverage >80%
- No security vulnerabilities
- Clean, readable code
- Proper error handling

This document should be updated as the project evolves and new requirements emerge.