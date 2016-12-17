RSpec.describe Article, type: :model do
  it { is_expected.to have_db_column :id }
  it { is_expected.to have_db_column :title }
  it { is_expected.to have_db_column :content }

  it { is_expected.to have_many :comments }
end