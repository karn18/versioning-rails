# App::Versioning for Rails
การจัดการกับเวอร์ชันให้กับ Rails Application จะไม่ยุ่งยากอีกต่อไป

## Installation

1. เพิ่ม `gem 'app-versioning-rails', git: 'https://github.com/karn18/app-versioning-rails'` เข้าไปใน Gemfile
2. รันคำสั่ง `./bin/bundle install`
3. รันคำสั่ง `./bin/rails veresioning:install`

## คำเตือน
การจะใช้งาน app-versioning-rails ได้จะต้องมันใจว่ามีการ commit โคดไว้แล้วด้วย เนื่องจากตอนนี้การจัดการค่า build จะดึงมาจาก `git rev-list HEAD | wc -l`
