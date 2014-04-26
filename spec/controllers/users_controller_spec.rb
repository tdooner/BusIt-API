require 'spec_helper'

describe UsersController do
  describe '#create' do
    let(:params) do
      {
        recipient_id: 'abc',
        email: 'abc@def.com'
      }
    end

    subject { post :create, params }

    context 'with valid params' do
      it { should be_success }

      it 'creates a user' do
        expect { subject }
          .to change { User.count }
          .by 1
      end
    end
  end
end
