# -*- coding: utf-8 -*-

h = {name: "清水寺",
     latitude: 35.111, longitude: 135.222,
     url: "http://ja.wikipedia.org/wiki/清水寺",
     question: "810年の薬子の変では平城上皇の脱出を阻止する働きをしたのは誰？",
     answer1: "坂上田村麻呂",
     answer2: "藤原仲成",
     answer3: "文室綿麻呂",
     correct: 2}

60.times do
  l = Landmark.create(h)
  l.tags.create([{name: "坂上田村麻呂"}, {name: "源氏物語"}, {name: "真言宗"}])
end
