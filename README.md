# Versioning for Rails
การจัดการกับเวอร์ชันให้กับ Rails Application จะไม่ยุ่งยากอีกต่อไป

## Installation

1. เพิ่ม `gem 'versioning-rails', git: 'https://github.com/karn18/versioning-rails'` เข้าไปใน Gemfile
2. รันคำสั่ง `./bin/bundle install`
3. รันคำสั่ง `./bin/rails veresioning:install`

## How to use

- Get current version

  ```ruby
  Version.release         # 1.0.2+001
  Version.release.compact # 1.0.2
  Version.release.major   # 1
  Version.release.minor   # 0
  Version.release.patch   # 2
  Version.release.build   # 001
  ```

- Update version

  use rake tasks to update version number

  ```bash
  $ ./bin/rails version:patch # 1.0.2 --> 1.0.3
  $ ./bin/rails version:minor # 1.0.2 --> 1.1.0
  $ ./bin/rails version:major # 1.0.2 --> 2.0.0
  ```

## Warning
การจะใช้งาน app-versioning-rails ได้จะต้องมันใจว่ามีการ commit โคดไว้แล้วด้วย เนื่องจากตอนนี้การจัดการค่า build จะดึงมาจาก `git rev-list HEAD | wc -l`
