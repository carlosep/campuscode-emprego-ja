# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

company_1 = Company.create(name: 'Campus Code', location: 'São Paulo', phone: '(11)9999-9999', mail: 'contact@campuscode.com.br')
company_2 = Company.create(name: 'Locaweb', location: 'São Paulo', phone: '(11)9999-9999', mail: 'contact@locaweb.com.br')
company_3 = Company.create(name: 'Microsoft', location: 'Rio De Janeiro', phone: '(11)9999-9999', mail: 'contact@microsoft.com')
company_4 = Company.create(name: 'IBM', location: 'Curitiba', phone: '(11)9999-9999', mail: 'contact@ibm.com')
category_1 = Category.create(name: 'IT')
category_2 = Category.create(name: 'Software Development')
category_3 = Category.create(name: 'Support')
category_4 = Category.create(name: 'Engineering')
contract_1 = Contract.create(name: 'CLT')
contract_2 = Contract.create(name: 'PJ')
contract_3 = Contract.create(name: 'Freelancer')
Job.create(company:company_1, category: category_1, contract: contract_1, title: 'Data analyst', description: 'Work with data analysis', location: 'São Paulo')
Job.create(company:company_1, category: category_2, contract: contract_2, title: 'Ruby Developer', description: 'Develop stuff with ruby', location: 'São Paulo')
Job.create(company:company_1, category: category_3, contract: contract_3, title: 'Support expert', description: 'Being an expert in supporting', location: 'Rio De Janeiro')
Job.create(company:company_2, category: category_4, contract: contract_1, title: 'Software Engineer', description: 'Engineer some software for us', location: 'Curitiba')
Job.create(company:company_2, category: category_1, contract: contract_2, title: 'Cloud specialist', description: 'Professional specialized in clouding clouds', location: 'São Paulo')
Job.create(company:company_2, category: category_2, contract: contract_3, title: 'Python Programmer', description: 'Know how to tame wild snakes', location: 'São Paulo')
Job.create(company:company_3, category: category_3, contract: contract_1, title: 'Auxiliar of maintenance', description: 'Help people to maintain', location: 'Rio De Janeiro')
Job.create(company:company_3, category: category_4, contract: contract_2, title: 'Software Engineer II', description: 'Engineer two software for us', location: 'Curitiba')
Job.create(company:company_3, category: category_1, contract: contract_3, title: 'Big Data Jedi', description: 'Use the force to control huge amounts of data', location: 'São Paulo')
Job.create(company:company_4, category: category_2, contract: contract_1, title: 'Javascript Ninja', description: 'Throw shurikens in javascripts', location: 'São Paulo')
Job.create(company:company_4, category: category_3, contract: contract_2, title: 'USB Corporal', description: 'Salute Usbs all day long', location: 'Rio De Janeiro')
Job.create(company:company_4, category: category_4, contract: contract_3, title: 'Master Engineer', description: "Master of engineering i'm pulling your strings", location: 'Curitiba')
