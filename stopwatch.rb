# -*- coding: utf-8 -*-

Shoes.app height: 200, width: 300 do
  background lightblue
  stack margin: 10 do
    caption strong "Shoes ストップウォッチ", :font => "osaka"

    # flow do にすると横並び。stackだと縦。
    stack do
      button "start" do
        @time = Time.now
        @label.replace "#{@time.strftime '%l:%M:%S %p'}にスタート", :font => "osaka"
      end

      button "stop" do
        @label.replace "ストップ:", strong("#{Time.now - @time}"),
        "秒経過", :font => "osaka"
      end
    end
    @label = para strong("スタート", :font => "osaka"), "ボタンをおすと開始します", :font => "osaka"
  end
end
