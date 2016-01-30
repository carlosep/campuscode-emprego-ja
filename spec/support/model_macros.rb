module ModelsMacros
  def create_company
    Company.create(name: 'Campus Code',
                   location: 'São Paulo',
                   phone: '11 2369 3476',
                   mail: 'contato@campuscode.com.br')
  end

  def create_category
    Category.create(name: 'Desenvolvedor')
  end

  def create_job(company = nil, title = nil, description = nil, location = nil, category = nil)
    company ||= create_company
    category ||= create_category
    title ||= 'Desenvolvedor Rails'
    description ||= 'Desenvolvedor Full Stack Rails'
    location ||= 'São Paulo - SP'
    company.jobs.create(title: title,
               description: description,
               location: location,
               company: company,
               category: category)
  end

  def sign_in
    user = User.create(email: "user@empregoja.com.br", password: "12345678")
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    within('.actions') do
      click_on "Log in"
    end
  end
end
