require 'spec_helper'

describe CheckInsController do
  describe '#index' do
    let(:bus_id) { 123 }
    let(:params) do
      {
        bus_id: bus_id
      }
    end

    subject { get :index, params }

    context 'when there are other checkins for that bus' do
      let!(:other_checkin) { FactoryGirl.create(:check_in, bus_id: bus_id) }

      it 'includes checkins for that bus' do
        subject
        JSON.parse(response.body)
            .map { |x| x["id"] }
            .should include(other_checkin.id)
      end
    end
  end

  describe '#create' do
    let(:bus_id) { 123 }
    let(:params) do
      {
        bus_id: bus_id
      }
    end

    subject { post :create, params }

    it 'creates a CheckIn' do
      expect { subject }
        .to change { CheckIn.count }
        .by 1
    end

    it 'returns JSON with the correct bus_id' do
      subject
      JSON.parse(response.body)["bus_id"].should == bus_id
    end
  end
end
