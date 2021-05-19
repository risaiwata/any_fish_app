class Agent < ApplicationRecord
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         mount_uploader :image, ImageUploader
        
          enum prefecture: {
          "--都道府県--":0,北海道:1,青森県:2,岩手県:3,宮城県:4,秋田県:5,山形県:6,福島県:7,
          茨城県:8,栃木県:9,群馬県:10,埼玉県:11,千葉県:12,東京都:13,神奈川県:14,
          新潟県:15,富山県:16,石川県:17,福井県:18,山梨県:19,長野県:20,
          岐阜県:21,静岡県:22,愛知県:23,三重県:24,
          滋賀県:25,京都府:26,大阪府:27,兵庫県:28,奈良県:29,和歌山県:30,
          鳥取県:31,島根県:32,岡山県:33,広島県:34,山口県:35,
          徳島県:36,香川県:37,愛媛県:38,高知県:39,
          福岡県:40,佐賀県:41,長崎県:42,熊本県:43,大分県:44,宮崎県:45,鹿児島県:46,沖縄県:47
        }, _prefix: true

        enum ship_type: {
          "--業種--":0,
          乗合:1,仕立:2,渡船:3,筏・カセ:4,レンタルボート:5,その他:6
        }, _prefix: true

        enum fishing_type: {
          "--釣り方--":0,
          コマセ（撒き餌）:1,サビキ:2,胴突き:3,活きエサ・泳がせ:4,天びん:5,五目釣り:6,磯釣り:7,
          筏・カセ釣り:8,スッテ・ツノ:9,エギング:10,タイラバ:11, ひとつテンヤ:12,ジギング・キャスティング:13,
          その他の釣り方:14
        }, _prefix: true

        with_options presence: true do
          validates :agentname, format: { with:/\A[ぁ-んァ-ン一-龥々ー]+\z/}
          validates :agentname_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
          validates :email, on: :create
          VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i
          validates :password, format: {with: VALID_PASSWORD_REGEX, message: "は英数字混合にしてください"}, on: :create
          validates :first_name, format: { with:/\A[ぁ-んァ-ン一-龥々ー]+\z/}
          validates :last_name, format: { with:/\A[ぁ-んァ-ン一-龥々ー]+\z/}
          validates :first_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
          validates :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
          validates :prefecture_id, numericality: {other_than: 0, message: "can't be blank"}
          validates :address
          validates :harbor
          validates :how_to_go1
          validates :tel1, format: {with:/\A\d{10,11}\z/, message: '電話番号は11桁以内の数値のみ保存可能なこと'}
          validates :regular_holiday
          validates :ice
          validates :target
          validates :ship_type_id, numericality: {other_than: 0, message: "can't be blank"}
          validates :fishing_type_id, numericality: {other_than: 0, message: "can't be blank"}
        end

        has_many :blogs

end
