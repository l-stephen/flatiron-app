# **Rails Fundamentals**

### **Creating a new rails Application**

creating the flatiron application

```
rails new flatiron
```
The rails new command will create a directory of generated files and folders

After creating the application cd into the folder 
```
cd flatiron
```

Starting the web server

```
rails server
```

### **Setting a route**

A route maps a request to a controller action, routes will be created in the  ```config/routes.rb file```

Routes are created as follows:
```
Rails.application.routes.draw do
    get "/staff", to: "staffs#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
```

The above route declares a ```Get/staff``` requests are mapped to the index of ```StaffsController```

To create the staff controller and its index run the following command:
```
rails generate controller Staffs index 
```

The above command will create a controller and its index 
```
class StaffsController < ApplicationController
    def index

    end
end
```

### **Views**

Rails will automatically create a view that matches the controller, views are created in the ```app/views``` directory

Open the views folder and replace ```app/views/staffs/index.html.erb``` with the following:

```
<h1>Hello, Rails!</h1>
```

### **Generating a model**

So far we have made a controller and routes, next we will create a model

To create a model use the rails generator 

```
rails generate model Staff name:string age:integer email title
```

The above command will genereate a model, and schema with the name, email, title as strings, and the age as an integer


Another way to create a model, controller, routes,and schema is to use the rails generate resource command 

**Create an MVC for students**

```
rails generate resource Student name age:integer email course
```

The above command will generate a model, schema, controller, and routes

Next we will migrate and create seed data

```
rails db:migrate
```

create seed data in the ```db/seeds``` file

```
Student.destroy_all
Staff.destroy_all

Student.create(name: "Stephen", email:"slambert@gmail.com", age: 27, course:"Software Engineering")

Student.create(name: "Sam", email:"sam@gmail.com", age: 27, course:"Software Engineering")
Staff.create(name: "Yesenia", email:"yesenia@gmail.com", age: 27, title:"Product Design")
Staff.create(name: "Jaycee", email:"jaycee@gmail.com", age: 27, title:"Community")

puts "Done Seeding!"
```

And lastly seed the database

```
rails db:seed
```

Lets go back to the staff controller and fetch all the staff from the database and render as JSON

```
class StaffsController < ApplicationController
    def index
        staffs = Staff.all
        render json: staffs
    end
end
```

 The above code will render all the staff as a json object

 ### **Resources**

(https://guides.rubyonrails.org/getting_started.html)













