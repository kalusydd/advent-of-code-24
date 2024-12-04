require 'rspec'
require_relative "../mull_it_over.rb"

describe('#format_string') do
  it "Should return all instances in the text that match the pattern" do
    text = "@~don't()mul(683,461) >,~select()what()};<mul(848,589)!\#{$$:,#mul(597,936)]!how();)+mul(944,148)who()mul(84,922)what()(mul(95,23)[;]*mul(186,673)$@+,;mul(662,571),^^&&mul(467,635)]>what()*,why()mul(456,228)%/'where()~{mul(508,422)mul(78,184)&why()/(mul(373,546)why()*</mul(840,607)(:how(428,64)>why():-~{@mul(615,760)}?/*>$mul(422,670)},?#''how()@#mul(597,259)??mul(281,991)when()why()]/;}:who()why()/mul(864,121)how()#\{[from()&mul(336,536) what()/what()#:>mul(908,667)[%^>&]select()*(mul(716,31)what()[+~what())]where():mul(131,416)what()from()]^when()$mul(808,465)from(747,493)*@;mul(728,405)@mul(528,186)where(830,813) mul(138,404)&&$,,mul(220,842)(from()*~from()how()where()mul(44,647)~where()}%$+mul(523,78)}mul(506,925)where()) ?mul(650,260)what()))when()mul(992,831)*]?-(mul(382,514)<?mul(338,811)~who()<)mul(510,851)[mul(362,413)^why()how()mul(456,506)why())},)*where(294,226)do()<when()>@<>,{*<mul(695,394)from(){/~mul(192,894);how()where()what()who()!:mul(932,681)@select()(where()@{?^+mul(260,501)from()+select()?^mul(445,400)@:;>^/why()[don't()#>how(558,115)mul(303,593)${~from()%*$%do()-+[$mul(406,365)how()mul(561,819)how():select()[:when()mul(283,930)where()$>why():<from(){who()^mul(5,405);%#what()[(*>#mul(154,725)from(496,796))@[how()from()- mul(942,491)-don't()~who()^)#select()where()mul(880,650)>(when(),)who()]where()mul(735,764)<-select()where()~#mul(685,917)from()!how()&who(),~why()[/mul(838,662) }what()from()from()<mul(25,821)]$+?)[>[mul(217,645)who(){who()mul(712,250)*}~who(133,126)where()}what()-where()mul(879,905)mul(95,8)~{?%:/mul(885,299)mul(509,215)~mul(97,351)mul(11,228)mul(976,139)where()mul(532,340)mul(535,236)</@)+mul(91,686)^+)(/}where()why()(<mul#-+!%(mul(23,448)!{:}#,mul(761,358)select()<mul(557,974)<({select()& why()]'mul(940,978)from()*why(871,616)$[mul#mul(652,248)what(455,217)-$<)'!{who(),mul(530,568))<;[}^do(){where()#&$};,}mul(903,867);-#**[/~mul(698,27),~mul(701,325)where()#who()>)'mul(544,423)@@ mul(543,903)why()mul(610,22)where()when()^)mul(529,383) ;,/'when(179,924)mul(31,223)when());<mul(812,214)mul(375,504)]:(~& !who()[~mul(192,595){~[{what()who()'from()mul(127,309)who()mul(555,543)%/%!~select(),?[from()mul(832,869)mul(808,878){[@mul(301,808)?>*from()mul(810,928) ^'{'?~mul(840,456)?where()}~:who()'do()@where(){(@$select(471,179)mul(490,95)where()?>)<mul(355,525)from(971,891)+select(){mul(247,601))%how()[;~select()mul(960,14)? #}/~from()why()%from()mul(507,980+from()\#@@mul(50,394)how(751,319)who()?~what()'when()$}-mul(791,444)))!#/>^$mul(192,331)?when()where()!}who()*%[%mul(778,800)+}when()who()how()mul(836,264)from()+)@where()mul(261,535)&)@why()-#/(mul(187,2)(?what()mul(467,281)when()where()#, [+what()select()(mul(232,619)don't()^mul(406,760)mul(400,865)%%who()where()}${?[!don't()#%@^/)when()]@%mul(268,776){-:how()}:'~+mul(817,838)}when()when()#/where()?how()+mul(712,30)select()(%* !mul(11,366)"
    expect = [[683, 461], [848, 589], [597, 936], [944, 148], [84, 922], [95, 23], [186, 673], [662, 571], [467, 635], [456, 228], [508, 422], [78, 184], [373, 546], [840, 607], [615, 760], [422, 670], [597, 259], [281, 991], [864, 121], [336, 536], [908, 667], [716, 31], [131, 416], [808, 465], [728, 405], [528, 186], [138, 404], [220, 842], [44, 647], [523, 78], [506, 925], [650, 260], [992, 831], [382, 514], [338, 811], [510, 851], [362, 413], [456, 506], [695, 394], [192, 894], [932, 681], [260, 501], [445, 400], [303, 593], [406, 365], [561, 819], [283, 930], [5, 405], [154, 725], [942, 491], [880, 650], [735, 764], [685, 917], [838, 662], [25, 821], [217, 645], [712, 250], [879, 905], [95, 8], [885, 299], [509, 215], [97, 351], [11, 228], [976, 139], [532, 340], [535, 236], [91, 686], [23, 448], [761, 358], [557, 974], [940, 978], [652, 248], [530, 568], [903, 867], [698, 27], [701, 325], [544, 423], [543, 903], [610, 22], [529, 383], [31, 223], [812, 214], [375, 504], [192, 595], [127, 309], [555, 543], [832, 869], [808, 878], [301, 808], [810, 928], [840, 456], [490, 95], [355, 525], [247, 601], [960, 14], [50, 394], [791, 444], [192, 331], [778, 800], [836, 264], [261, 535], [187, 2], [467, 281], [232, 619], [406, 760], [400, 865], [268, 776], [817, 838], [712, 30], [11, 366]]
    actual = format_string(text)
    expect(actual).to eq(expect)
  end
end

describe('#multiplication_sum') do
  it "Returns zero if one or both values are zero" do
    array = [[0, 0], [0, 1]]
    expect = 0
    actual = multiplication_sum(array)
    expect(actual).to eq(expect)
  end
  it "Returns the correct sum of the integers passed" do
    array = [
      [273, 597],
      [172, 475],
      [386, 241],
      [514, 329],
      [438, 205],
      [621, 753],
      [812, 642],
      [135, 478],
      [293, 364],
      [719, 546]
    ]
    expect = 2149276
    actual = multiplication_sum(array)
    expect(actual).to eq(expect)
  end
end
