//
//  ViewController.swift
//  MindTest
//
//  Created by Jason Hsu on 2018/7/24.
//  Copyright © 2018 junchoon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var choiceButton1: UIButton!
    @IBOutlet weak var choiceButton2: UIButton!
    @IBOutlet weak var questionLabel: UITextView!
    @IBOutlet weak var titleLabel: UILabel!
    
    let q1 = "夢中的妳是一個非常受歡迎的少女偶像歌手！其實妳有一個秘密，就是妳現在正跟一個很紅的小天王在交往當中。不過這種情形對身為偶像的兩人來說，是一件非常計忌諱的事情，所以妳會？"
    let q2 = "場景突然一換，現在的妳是一個參加外交官考試的考生，如果要妳選擇派駐地的話，妳希望到哪個國家去呢？"
    let q3 = "這次妳又變成一個廣告公司的文案人員，這次客戶將要推出一種營養飲料，妳會將它命名為什麼呢？"
    let q4 = "接下來妳變成一個大公司的董事長秘書，雖然董事長對人不太友善，不過卻是相當疼愛妳。這天妳發現到公司裏的其他董事正在商討要如何將董事長拉下臺的邪惡陰謀，知道這個真相的妳，會如何做呢？"
    let q5 = "這次妳是一家寵物店的女老闆，一天來了一個很有錢的女人要買一隻寵物，不過她中意的剛好是妳最喜歡的一隻小貓。妳心裏想，可以的話最好不要賣掉。那麼，妳會如何回答她呢？"
    let q6 = "接下來妳又變成一個新科立委，一些選民希望妳能在當地興建可以振興觀光業的高爾夫球場，可是這麼一來，卻可能會造成農藥污染。進退兩難的妳，會怎麼辦呢？"
    let q7 = "妳變成一位空中小姐，有一天妳所服務的航班剛好有妳最崇拜的藝人登機，這下妳會有什麼反應呢？"
    let q8 = "夢中的妳又搖身一變成為一個新銳大導演，妳覺得自己的第一部電影會選擇什麼樣子的題材呢？"
    let q9 = "妳成了一位幼稚園老師，這天園裏面的一個小男生跑過來跟妳說「等我長大了要跟老師結婚！」聽到這些話的妳，會如何回答呢？"
    let q10 = "妳變成一位到火星探險的太空人，跟另一位夥伴一起到外太空出任務。對於這次的探險，妳最擔心什麼事呢？"
    let q11 = "一回過神來，妳突然穿著護士的衣服，眼前一個小孩子看到妳手上的針筒，就嚇得嚎啕大哭。那麼，妳會如何替他打針呢？"
    let q12 = "妳變成一個很受歡迎的少女漫畫家，今天編輯打電話來詢問妳進度，很少拖稿的妳卻因為陷入低潮，居然連一頁都還沒完成。因此，妳會如何來向對方說明呢？"
    let q13 = "這次妳是一位花店的老闆娘，有一個很帥的男顧客進來買花，因為他要送給女朋友，所以想請妳給個建議。那麼妳會替他挑選什麼樣的花束呢？"
    let q14 = "夢裏妳又變成一個女警官，這次在妳眼前發生了犯人脫逃事件，妳會採取何種行動呢？"
    let q15 = "妳當上少女雜誌的總編輯，因為這一期的專題報導是介紹現今的流行趨勢，所以下一期妳會企劃哪一類的單元呢？"
    
    let typeATitle = "A類型外語能力最重要穿梭各國的超級經理人"
    let typeBTitle = "B類型最好要有職業證照具有一技之長的專業人員"
    let typeCTitle = "C類型請正視自己的才能個性化的藝術相關行業"
    let typeDTitle = "D類型需要細心與耐心非妳莫屬的事務性工作"
    let typeETitle = "E類型內心充實最重要主控權十足的經營者"
    let typeFTitle = "F類型請展現迷人的笑容能夠服務廣大人群的行業"
    
    let typeA = "對於這種類型的妳，我們建議妳最好從事可以穿梭世界各地的行業，像是擔任貿易公司的業務經理人或是自行創業當老闆。因為這樣的生活雖然很忙碌，不過卻很適合讓具有商業頭腦的妳發揮長才。對了，既然要當個空中飛人，別忘了要好好充實一下自己的外語能力唷！"
    let typeB = "妳適合從事的工作就是具有專門技術的從業人員，像是醫生、護士、老師等這類需要職業證照的工作。此外與媒體有關的行業，好比說編輯、導播等也很不錯，因為這樣的工作既可跟人群接觸，也擁有獨一無二的專業性。如果妳生性較害羞的話，那麼研究室的研究員也是不錯的選擇。"
    let typeC = "這類型的妳最好是從事與自己興趣相關的行業，像是音樂家、畫家、小說家等藝術性頗高的職業都非常適合妳。不要說自己的能力不夠，如果真心喜愛此類事物的話，就從現在開始充實這方面的知識吧！個性十足的妳，唯有在這些領域才能夠大放異彩，所以千萬不要等到老大徒傷悲喔！"
    let typeD = "適合妳的工作就是各行各業都不可或缺的事務性人員！雖然此類的工作乍看之下非常普通，不過這卻是需要極大的耐心、細心與責任感，可不是誰都做得來的。妳可以選擇進入大公司的總務部門，或是到公家機關上班都不錯。此外，會計師事務所與設計公司也都是可以考慮的選擇。"
    let typeE = "妳最適合自己開一家小店，像是花店、餐廳等都很不錯。因為妳喜歡可以事必躬親、主控權掌握在自己手裏的感覺，所以開店是再好不過了！當然如果不是自行開業也不要緊，只要可以讓妳感到夠充實、夠有趣的話，再忙碌妳還是會樂在其中的，因為妳並不適合一成不變的工作內容"
    let typeF = "最好從事可以服務廣大人群的行業，像是百貨公司的專櫃小姐、店員、空中小姐、導遊等等都是很適合的工作。因為總是笑容滿面又很會替人著想的妳，若是能在這些業界服務的話，一定可以將妳的優點發揮到淋漓盡致，獲得極大的成就感。而且妳接觸的人越多，就會越有活力喔!"
    
    @IBAction func firstChoice(_ sender: Any) {
        answer()
    }
    @IBAction func secondChoice(_ sender: Any) {
        answer()
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func answer() {
        if choiceButton1.currentTitle == "開始" {
            questionLabel.text = q1
            choiceButton1.setTitle("退出歌壇，專心與他談戀愛", for: .normal)
            choiceButton2.setTitle("放棄愛情，繼續當偶像", for: .normal)
        } else if choiceButton1.currentTitle == "退出歌壇，專心與他談戀愛" {
            questionLabel.text = q3
            choiceButton1.setTitle("活力Ａ他命", for: .normal)
            choiceButton2.setTitle("美麗Ｃ元素", for: .normal)
        } else if choiceButton2.currentTitle == "放棄愛情，繼續當偶像" {
            questionLabel.text = q2
            choiceButton1.setTitle("擁有廣闊大地的澳洲", for: .normal)
            choiceButton2.setTitle("充滿藝術與古蹟的義大利", for: .normal)
        } else if choiceButton1.currentTitle == "活力Ａ他命" {
            questionLabel.text = q4
            choiceButton1.setTitle("覺得董事長太可憐，立刻去向他報告", for: .normal)
            choiceButton2.setTitle("反正他那麼凶，不想淌這個渾水", for: .normal)
        } else if choiceButton2.currentTitle == "美麗Ｃ元素" {
            questionLabel.text = q5
            choiceButton1.setTitle("「這是非賣品的小貓」", for: .normal)
            choiceButton2.setTitle("「請妳一定要好好疼愛牠」", for: .normal)
        } else if choiceButton1.currentTitle == "擁有廣闊大地的澳洲" {
            questionLabel.text = q4
            choiceButton1.setTitle("覺得董事長太可憐，立刻去向他報告", for: .normal)
            choiceButton2.setTitle("反正他那麼兇，不想淌這個渾水", for: .normal)
        } else if choiceButton2.currentTitle == "充滿藝術與古蹟的義大利" {
            questionLabel.text = q4
            choiceButton1.setTitle("活力Ａ他命", for: .normal)
            choiceButton2.setTitle("美麗Ｃ元素", for: .normal)
        } else if choiceButton1.currentTitle == "覺得董事長太可憐，立刻去向他報告" {
            questionLabel.text = q6
            choiceButton1.setTitle("為了長久的將來打算，拒絕興建高爾夫球場", for: .normal)
            choiceButton2.setTitle("先解決當地的經濟問題才是當務之急，會努力促成球場興建", for: .normal)
        } else if choiceButton2.currentTitle == "反正他那麼凶，不想淌這個渾水" {
            questionLabel.text = q5
            choiceButton1.setTitle("「這是非賣品的小貓」", for: .normal)
            choiceButton2.setTitle("「請妳一定要好好疼愛牠」", for: .normal)
        } else if choiceButton1.currentTitle == "「這是非賣品的小貓」" {
            questionLabel.text = q7
            choiceButton1.setTitle("會對他有特別的禮遇與照顧", for: .normal)
            choiceButton2.setTitle("怕其他乘客會生氣，還是以一般的服務對待他", for: .normal)
        } else if choiceButton2.currentTitle == "「請妳一定要好好疼愛牠」" {
            questionLabel.text = q6
            choiceButton1.setTitle("為了長久的將來打算，拒絕興建高爾夫球場", for: .normal)
            choiceButton2.setTitle("先解決當地的經濟問題才是當務之急，會努力促成球場興建", for: .normal)
        } else if choiceButton1.currentTitle == "為了長久的將來打算，拒絕興建高爾夫球場" {
            questionLabel.text = q8
            choiceButton1.setTitle("浪漫的愛情故事", for: .normal)
            choiceButton2.setTitle("充滿想像的科幻故事", for: .normal)
        } else if choiceButton2.currentTitle == "先解決當地的經濟問題才是當務之急，會努力促成球場興建" {
            questionLabel.text = q7
            choiceButton1.setTitle("會對他有特別的禮遇與照顧", for: .normal)
            choiceButton2.setTitle("怕其他乘客會生氣，還是以一般的服務對待他", for: .normal)
        } else if choiceButton1.currentTitle == "會對他有特別的禮遇與照顧" {
            questionLabel.text = q8
            choiceButton1.setTitle("浪漫的愛情故事", for: .normal)
            choiceButton2.setTitle("充滿想像的科幻故事", for: .normal)
        } else if choiceButton2.currentTitle == "怕其他乘客會生氣，還是以一般的服務對待他" {
            questionLabel.text = q9
            choiceButton1.setTitle("邊笑邊說「好呀，不過等你長大了，老師就變成老太婆了唷～」", for: .normal)
            choiceButton2.setTitle("輕輕地摸一下對方的頭說「你呀，真是人小鬼大！」", for: .normal)
        } else if choiceButton1.currentTitle == "浪漫的愛情故事" {
            questionLabel.text = q10
            choiceButton1.setTitle("想到每天只能吃不怎麼好吃的太空食物，就感到很悶", for: .normal)
            choiceButton2.setTitle("擔心無法順利回到最愛的地球", for: .normal)
        } else if choiceButton2.currentTitle == "充滿想像的科幻故事" {
            questionLabel.text = q9
            choiceButton1.setTitle("邊笑邊說「好呀，不過等你長大了，老師就變成老太婆了唷～」", for: .normal)
            choiceButton2.setTitle("輕輕地摸一下對方的頭說「你呀，真是人小鬼大！」", for: .normal)
        } else if choiceButton1.currentTitle == "邊笑邊說「好呀，不過等你長大了，老師就變成老太婆了唷～」" {
            questionLabel.text = q11
            choiceButton1.setTitle("一邊說著「一點都不痛喔～」一邊找機會下手", for: .normal)
            choiceButton2.setTitle("跟他說明「比你小的小朋友也都沒哭喔」，然後火速地打下去", for: .normal)
        } else if choiceButton2.currentTitle == "輕輕地摸一下對方的頭說「你呀，真是人小鬼大！」" {
            questionLabel.text = q10
            choiceButton1.setTitle("想到每天只能吃不怎麼好吃的太空食物，就感到很悶", for: .normal)
            choiceButton2.setTitle("擔心無法順利回到最愛的地球", for: .normal)
        } else if choiceButton1.currentTitle == "想到每天只能吃不怎麼好吃的太空食物，就感到很悶" {
            questionLabel.text = q11
            choiceButton1.setTitle("一邊說著「一點都不痛喔～」一邊找機會下手", for: .normal)
            choiceButton2.setTitle("跟他說明「比你小的小朋友也都沒哭喔」，然後火速地打下去", for: .normal)
        } else if choiceButton2.currentTitle == "擔心無法順利回到最愛的地球" {
            questionLabel.text = q13
            choiceButton1.setTitle("純白的玫瑰花束", for: .normal)
            choiceButton2.setTitle("有各種顏色的繽紛花束", for: .normal)
        } else if choiceButton1.currentTitle == "想一邊說著「一點都不痛喔～」一邊找機會下手" {
            questionLabel.text = q12
            choiceButton1.setTitle("老實跟對方說「我已經盡力了」", for: .normal)
            choiceButton2.setTitle("其實我生病了…」找個藉口搪塞過去", for: .normal)
        } else if choiceButton2.currentTitle == "跟他說明「比你小的小朋友也都沒哭喔」，然後火速地打下去" {
            questionLabel.text = typeB
            titleLabel.text = typeBTitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        } else if choiceButton1.currentTitle == "老實跟對方說「我已經盡力了」" {
            questionLabel.text = typeF
            titleLabel.text = typeFTitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        } else if choiceButton2.currentTitle == "「其實我生病了…」找個藉口搪塞過去" {
            questionLabel.text = q13
            choiceButton1.setTitle("純白的玫瑰花束", for: .normal)
            choiceButton2.setTitle("有各種顏色的繽紛花束", for: .normal)
        } else if choiceButton1.currentTitle == "純白的玫瑰花束" {
            questionLabel.text = typeC
            titleLabel.text = typeCTitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        } else if choiceButton2.currentTitle == "有各種顏色的繽紛花束" {
            questionLabel.text = q14
            choiceButton1.setTitle("立刻跳上車子追捕犯人", for: .normal)
            choiceButton2.setTitle("記下犯人的車號，立即用無線電聯絡其他的同事，展開大規模搜捕", for: .normal)
        } else if choiceButton1.currentTitle == "立刻跳上車子追捕犯人" {
            questionLabel.text = typeA
            titleLabel.text = typeATitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        } else if choiceButton2.currentTitle == "記下犯人的車號，立即用無線電聯絡其他的同事，展開大規模搜捕" {
            questionLabel.text = q15
            choiceButton1.setTitle("當然是女孩最喜歡的「浪漫約會何處去」之類的介紹", for: .normal)
            choiceButton2.setTitle("教大家「如何把平常的服飾穿出流行感」的專題報導", for: .normal)
        } else if choiceButton1.currentTitle == "當然是女孩最喜歡的「浪漫約會何處去」之類的介紹" {
            questionLabel.text = typeE
            titleLabel.text = typeETitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        } else if choiceButton2.currentTitle == "教大家「如何把平常的服飾穿出流行感」的專題報導" {
            questionLabel.text = typeD
            titleLabel.text = typeDTitle
            choiceButton1.setTitle("", for: .normal)
            choiceButton2.setTitle("", for: .normal)
        }
    }


}

