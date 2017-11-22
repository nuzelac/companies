namespace :companies do
  desc 'Create random company'
  task create: :environment do
    fake_company = Faker::Company

    Company.create(
      name: fake_company.name,
      comment: fake_company.bs
    )
  end
end
