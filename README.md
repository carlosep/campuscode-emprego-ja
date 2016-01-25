# README

We will be listing the steps taken to solve the exercises on every branch of the project.

* [Visitante acessa a pagina inicial (Branch: home)](#visitante-acessa-a-pagina-inicial)  
* [Visitante vê detalhes de uma vaga (Branch: view_job_detail)](#visitante-vê-detalhes-de-uma-vaga)  
* [Visitante visualiza vagas (Branch: home_with_jobs)](#visitante-visualiza-vagas)  
* [Usuário cadastra vaga (Branch: user_create_job)](#usuário-cadastra-vaga)  
* [Usuário usa empresas cadastradas (Branch: companies)](#usuário-usa-empresas-cadastradas)  
* [Usuário marca vagas em destaque (Branch: featured_jobs)](#usuário-marca-vagas-em-destaque)  
* [Usuário cadastra empresas (Branch: user_create_company)](#usuário-cadastra-empresas)  
* [Usuário deve criar vagas corretamente (Branch: user_create_valid_job)](#usuário-deve-criar-vagas-corretamente)  
* [Visitante escolhe vagas por empresas (Branch: jobs_by_company)](#visitante-escolhe-vagas-por-empresas)  
* [Usuário usa categorias cadastradas (Branch: categories)](#usuário-usa-categorias-cadastradas)  
* [Visitante escolhe vagas por categorias (Branch: jobs_by_categories)](#visitante-escolhe-vagas-por-categorias)  
* [Usuário edita vaga (Branch: user_edit_job)](#usuário-edita-vaga)  
* [Usuário deve criar empresas corretamente (Branch: user_create_valid_company)](#usuário-deve-criar-empresas-corretamente)  
* [Usuário cadastra categorias (Branch: user_create_categories)](#usuário-cadastra-categorias)  
* [Usuário edita empresas (Branch: user_edit_companies)](#usuário-edita-empresas)  
* [Destacar vagas recentes (Branch: recent_jobs)](#destacar-vagas-recentes)  
* [Destacar empresas com muitas vagas (Branch: premium_companies)](#destacar-empresas-com-muitas-vagas)  
* [Vagas expiram com 90 dias](#vagas-expiram-com-90-dias)  
* [Usuário deve se autenticar](#usuário-deve-se-autenticar)  
* [Usuário adiciona logo da empresa](#usuário-adiciona-logo-da-empresa)  


## Visitante acessa a pagina inicial
#### *Branch: home*

* Error message: undefined method or variable 'root_path'  
  * Add root route on routes.rb  
* Error message: unitialized constant WelcomeController  
  * Add controller WelcomeController  
* Error message: action 'index' not found.  
  * Add action index on WelcomeController  
* Error message: template missing.  
  * Add index template on views/welcome/  
* Error message: expected(page).to have_content  
  * Add required content to index template

***--Test Passed--***

## Visitante vê detalhes de uma vaga
#### *Branch: view_job_detail*

* Error message: Unable to find link or button  
  * Added link on views/home/index.html.erb and respective route for job  
* Error message: Uninitialized constant JobsController  
  * Added file jobs_controller with class JobsController  
* Error message: Action 'show' could not be found on JobsController  
  * Added action show on JobsController  
* Error message: Missing Template  
  * Added file views/jobs/show.html.erb  
* Error message: expect(page).to have_content  
  * Added correct job :id on show action and job content on views/jobs/show.html.erb  

***--Test Passed--***

## Visitante visualiza vagas
#### *Branch: home_with_jobs*

* Error message: uninitialized constant Job  
  * Generated model with all fields and migration.  
* Error message: expect(page).to have_content  
  * Added @jobs = Job.all on index action on HomeController and iterated it on views/home/index.html.erb  

***--Test Passed--***

## Usuário cadastra vaga
#### *Branch: user_create_job*

* Error message: undefined local variable or method 'new_job_path'  
  * Added new and create to resources route, action new to JobsController and template on views/jobs/new.html.erb  
* Error message: unable to find field "Title"  
  * Added form to views/jobs/new.html.erb  
* Error message: action 'create' could not be found for JobsController  
  * Added action create on JobsController w/ redirect_to @job  

***--Test Passed--***

## Usuário usa empresas cadastradas
#### *Branch: companies*

* Error message: uninitialized constant Company  
  * Generated model company w/ fields  
* Error message: Unable to find select box "Company"  
  * Added select_collection for Company on views/jobs/new, model associations between company and job, migration to add   company_id on job, and permission for company_id on JobsController  
* Error message: expect(page).to have_content company.name  
  * Added job.company.name where it used to be job.company

***--Test Passed--***

## Usuário marca vagas em destaque
#### *Branch: featured_jobs*

* Error message: Unable to find checkbox "Featured"  
  * Added checkbox featured to new job form  
* Error message: Undefined method 'featured'  
  * Generated migration to add a boolean featured field to jobs  
* Error message: expect(page).to have_content ...  
  * Added permission for 'featured' on JobsController and if clause to display message on view in case featured.  

***--Test Passed--***

## Usuário cadastra empresas
#### *Branch: user_create_company*

* Error message: undefined local variable or method 'new_company_path'  
  * Added resources routes for companies and created CompaniesController  
* Error message: The action 'new' couldn't be found for CompaniesController  
  * Added action 'new' and template views/companies/new.html.erb  
* Error message: Unable to find field "Name"  
  * Created form on views/companies/new.html.erb  
* Error message: The action 'create' could not be found for CompaniesController  
  * Added action 'create' and template views/companies/show.html.erb  
* Error message: expect(page).to have_content company.name  
  * Added action 'show' and filled views/companies/show.html.erb w/ correct data  

***--Test Passed--***

## Usuário deve criar vagas corretamente
#### *Branch: user_create_valid_job*

* Error message: undefined method 'name'  
  * Added Validation on model Job  
* Error message: No route matches [GET] "/jobs"  
  * Changed Job.create on action 'create' for Job.new, if saved redirect, if not throw error messages  
* Failure/Error: <%= f.collection_select :company_id, @companies, :id, :name %>; Error message: undefined method 'map' for nil:NilClass  
  * Added @companies = Company.all on action 'create' at JobsController  
* Error message: expect(page).to have_content ...  
  * Added iteration on @errors at views/jobs/new  

***--Test Passed--***

## Visitante escolhe vagas por empresas
#### *Branch: jobs_by_company*

* Error message: unable to find link or button "Campus Code"  
  * Added @companies = Company.all on HomeController and added iteration that creates links of all companies on index  
* Error message: expect(page).to have_content job.title  
  * Added iteration for jobs on views/companies/show.html.erb  

***--Test Passed--***

## Usuário usa categorias cadastradas
#### *Branch: categories*

* Error message: uninitialized constant Category.  
  * Generated Model for category and defined association w/ job  
* Error message: can't write unknown attribute 'category_id'  
  * Generated Migration to add foreign_key category_id and Another migration to remove category:string  
* Error message: Category(#64080920) expected, got String(#13133680)  
  * Changed permissions on job controller from :category to :category_id  
* Error message: expect(page).to have_content job.location  
  * Fixed broken tests, homepage view, changed "company" on views/jobs/new.html.erb to "company_id".  

***--Test Passed--***

## Visitante escolhe vagas por categorias
#### *Branch: jobs_by_categories*

* Error message: Unable to find link or button "Desenvolvedor"  
  * Added @categories on HomeController and Iteration on index  
* Error message: Undefined method 'category_path'  
  * Added resources routes for, controller for category w/ action and template show  
* Error message: expect(page).to have_content category.name  
  * Added @company on CategoriesController and iterated on @categories.jobs on view  

***--Test Passed--***

## Usuário edita vaga
#### *Branch: user_edit_job*

* Error message: undefined method 'edit_job_path(job)'  
  * Added edit and update on resources routes  
* Error message: the action 'edit' could not be found for JobsController  
  * Added action edit on JobsController  
* Error message: Missing template jobs/edit  
  * Added template w/ form (changed 'Criar Vaga' for 'Atualizar Vaga')  
* Error message: undefined method 'map' for nil:NilClass  
  * Added permit on before_action for set_companies and set_categories  

***--Test Passed--***

## Usuário deve criar empresas corretamente
#### *Branch: user_create_valid_company*

* Error message: expect(page).to have_content "Warning! All fields are mandatory."  
  * Added validation on Company  
* Failure/Error: click_on 'Criar Empresa', Error message: No route matches [GET] "/companies"  
  * Changed Job.create on action 'create' for Job.new, if saved redirect, if not throw error messages and render 'new'  
* Error message: expect(page).to have_content "Warning! All fields are mandatory."  
  * Added error validation on views/companies/new.html.erb  

***--Test Passed--***

## Usuário cadastra categorias
#### *Branch: user_create_categories*

* Error message: undefined local variable or method 'new_category_path'  
  * Added new and create to resources, created actions on CategoriesController, created views/categories/new.html.erb  
* Error message: expect(page).to have_content "Warning! All fields are mandatory."  
  * Added validation on model Category  
* Error message: ActionController::RoutingError: No route matches [GET] "/categories"  
  * Fixed action create on CategoriesController  
* Error message: Error message: expect(page).to have_content "Warning! All fields are mandatory."  
  * Added if errors display message on views/categories/new.html.erb  

***--Test Passed--***

## Usuário edita empresas
#### *Branch: user_edit_companies*

* Error message: undefined method 'edit_company_path'  
  * Added resources edit and update on for company, actions on controller, and template w/ form  
* Error message: First argument in form cannot contain nil or be empty  
  * Added set_company before_action  

***--Test Passed--***

## Destacar vagas recentes
#### *Branch: recent_jobs*

* Error message: expect(page).to have_content('Novidade')  
  * Added validation on index  
* Error message: execped(job).to be_recent  
  * Defined custom method 'recent?' on job model and updated index validation to use this method.  

***--Test Passed--***

## Destacar empresas com muitas vagas
#### *Branch: premium_companies*

* Error message: expect(page).to have_content('Empresa Premium')
  * Added method premium? to company model, and validation on view

***--Test Passed--***

## Vagas expiram com 90 dias
#### *Branch: ???*

* soon...

## Usuário deve se autenticar
#### *Branch: ???*

* soon...

## Usuário adiciona logo da empresa
#### *Branch: ???*

* soon...
