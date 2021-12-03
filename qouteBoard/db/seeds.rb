# frozen_string_literal: true

# Initial Data for Role
@admin = Role.create(name: 'Admin')
@member = Role.create(name: 'Member')
# Admin
User.create(email: 'admin@ait.asia',
            password: 'secret123',
            password_confirmation: 'secret123',
            role: @admin)
# Member
User.create(email: 'member@ait.asia',
            password: 'secret123',
            password_confirmation: 'secret123',
            role: @member)
