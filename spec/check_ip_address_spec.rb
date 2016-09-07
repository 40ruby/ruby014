require_relative '../check_ip_address'

describe 'CheckIPAddress' do
  describe '一つの文字列を引数とすること' do
    context '文字列として正常に受け付けた場合' do
      it '引数が文字列の場合は正常' do
        expect(CheckIPAddress('test')).to eq(true)
      end
    end
    context '文字列以外を受け付けて異常となる場合' do
      it '引数が数値の場合は異常' do
        expect(CheckIPAddress(100)).to eq(false)
      end
      it '引数が配列の場合は異常' do
        expect(CheckIPAddress([100,100])).to eq(false)
      end
    end
  end
end
