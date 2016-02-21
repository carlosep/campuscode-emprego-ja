module ModelsMacros
  def create_company(name: nil, location: nil, phone: nil, mail: nil)
    name ||= 'Campus Code'
    location ||= 'São Paulo'
    phone ||= '11 2369 3476'
    mail ||= 'contato@campuscode.com.br'
    Company.create(name: name,
                   location: location,
                   phone: phone,
                   mail: mail)
  end

  def create_category(name = nil)
    name ||= 'Desenvolvedor'
    Category.create(name: name)
  end

  def create_contract(name = nil)
    name ||= 'CLT'
    Contract.create(name: name)
  end

  def create_job(title: nil, description: nil, location: nil, category: nil,
                 company: nil, contract: nil)
    company ||= create_company
    category ||= create_category
    contract ||= create_contract
    title ||= 'Desenvolvedor Rails'
    description ||= 'Desenvolvedor Full Stack Rails'
    location ||= 'São Paulo - SP'
    company.jobs.create(title: title, description: description,
                        location: location, company: company,
                        category: category, contract: contract)
  end

  def sign_in
    user = User.create(email: 'user@empregoja.com.br', password: '12345678')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    within('.actions') do
      click_on 'Log in'
    end
  end
end
