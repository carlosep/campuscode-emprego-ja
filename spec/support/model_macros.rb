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

  def sign_in
    user = User.create(email: 'user@empregoja.com.br', password: '12345678')
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    within('.actions') do
      click_on 'Log in'
    end
  end

  def create_job(args = {}) # actually sets jobs...
    args[:company]     ||= create_company
    args[:category]    ||= create_category
    args[:contract]    ||= create_contract
    args[:title]       ||= 'Desenvolvedor Rails'
    args[:description] ||= 'Desenvolvedor Full Stack Rails'
    args[:location]    ||= 'São Paulo - SP'
    save_jobs(args)
  end

  private

  def save_jobs(args)
    args[:company].jobs
                  .create(title: args[:title], description: args[:description],
                          location: args[:location], company: args[:company],
                          category: args[:category], contract: args[:contract])
  end
end
