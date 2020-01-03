//
//  ViewController.swift
//  choice
//
//  Created by 莊宇軒 on 2020/1/3.
//  Copyright © 2020 kffatkalo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLable: UILabel!
    @IBOutlet weak var scoreLable: UILabel!
    @IBOutlet weak var resultLable: UILabel!
    @IBOutlet var choiceButton: [UIButton]!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var againButton: UIButton!
    let choiceQueses = [ChoiceQues(question: "台灣藥品分級總共分成幾級？", choice: ["一級", "二級", "三級"], answer: "三級"),
                        ChoiceQues(question: "寒夜裏，在暖暖的營火堆旁取暖，這是利用哪種『熱』的傳播方式？", choice: ["輻射", "傳導", "對流"], answer: "輻射"),
                        ChoiceQues(question: "李商隱詩中提到『春蠶到死絲方盡』可見殘吐完絲後，便會死去？", choice: ["是", "不是", "不知道"], answer: "不是"),
                        ChoiceQues(question: "傳統黑白配色的『足球』，黑色的區塊是什麼形狀？", choice: ["七邊形", "六角形", "五角形"], answer: "五角形"),
                        ChoiceQues(question: "京劇臉譜中，『白臉』代表了什麼意義？", choice: ["奸臣", "書生", "武將"], answer: "奸臣"),
                        ChoiceQues(question: "屏東東港的『燒王船』祭典，每幾年才辦ㄧ次？", choice: ["一年", "兩年", "三年"], answer: "三年"),
                        ChoiceQues(question: "台灣有布袋戲，日本有招財貓，而俄羅斯有哪種特色娃娃？", choice: ["許願娃娃", "註升娃娃", "平安娃娃"], answer: "許願娃娃"),
                        ChoiceQues(question: "人體上最大的活動關節是哪一個？", choice: ["髖關節", "踝關節", "肩關節"], answer: "肩關節"),
                        ChoiceQues(question: "三個口唸『ㄆㄧㄣˇ』，三條魚，唸作『ㄒㄧㄢ』，三頭牛，唸作什麼？", choice: ["『ㄕㄢ』", "『ㄅㄣ』", "『ㄅㄧㄠ』"], answer: "『ㄅㄣ』"),
                        ChoiceQues(question: "郵政總局發行的郵票，面額最小的郵票是多少錢？", choice: ["『1元』", "『5角』", "『1角』"], answer: "『5角』"),
                        ChoiceQues(question: "運動有益身體健康，建議每天應該至少運動多久？", choice: ["『20分鐘』", "『30分鐘』", "『40分鐘』"], answer: "『30分鐘』"),
                        ChoiceQues(question: "中國的新年，家家戶戶都會貼上春聯，這是從哪一朝才開始盛行的？", choice: ["『元朝』", "『明朝』", "『清朝』"], answer: "『明朝』"),
                        ChoiceQues(question: "『西遊記』李神通廣大的孫悟空７２變，耍的是什麼棒？", choice: ["神通金箍棒", "如意金箍棒", "吉拿金箍棒"], answer: "如意金箍棒"),
                        ChoiceQues(question: "達文西的名畫『蒙娜麗莎的微笑』是左手在上還是右手在上？", choice: ["右手在上", "左手在上", "手沒交疊"], answer: "右手在上"),
                        ChoiceQues(question: "全台灣面積最大的縣市是哪一個？", choice: ["花蓮縣", "南投縣", "台東縣"], answer: "花蓮縣"),
                        ChoiceQues(question: "空氣中渾雜著許多氣體，氮氣、氧氣、氬氣，其中『氧氣』約佔空氣的？", choice: ["四分之ㄧ", "五分之ㄧ", "六分之ㄧ"], answer: "五分之ㄧ"),
                        ChoiceQues(question: "『廚餘』已加入強制回收的行列，下列哪一種是不可回收的廚餘？", choice: ["牡蠣", "芭樂", "甘蔗皮"], answer: "甘蔗皮"),
                        ChoiceQues(question: "傳說中的『年獸』最怕什麼顏色？", choice: ["紅色", "藍色", "綠色"], answer: "紅色"),
                        ChoiceQues(question: "以下哪一個動作不需要用到手？", choice: ["Point", "clap", "chat"], answer: "chat"),
                        ChoiceQues(question: "『西遊記』裡的火燄山是現今的吐魯番盆地，請問這裡盛產哪種水果？", choice: ["巴蕉", "西瓜", "葡萄"], answer: "葡萄"),
                        ChoiceQues(question: "ㄧ腳會走，無嘴會哮（ㄒㄧㄠ），猜一個玩具？", choice: ["扯鈴", "陀螺", "踺子"], answer: "陀螺"),
                        ChoiceQues(question: "『麵粉』有低、中、高三種，其中間的差別在於什麼含量的多寡？", choice: ["碳水化合物", "蛋白質", "纖維"], answer: "蛋白質"),
                        ChoiceQues(question: "成語入木三分本來是形容？", choice: ["雕刻技巧純熟", "書法造詣高深", "做事全神貫注"], answer: "書法造詣高深"),
                        ChoiceQues(question: "下列那一個單位名稱的英文所寫錯誤？", choice: ["公尺－m", "公寸－hm", "公丈－dam"], answer: "公寸－hm"),
                        ChoiceQues(question: "國立故宮博物院的鎮館之寶翠玉白菜上的昆蟲是哪兩種？", choice: ["螽斯和蝗蟲", "螽斯和紡織娘", "螽斯和瓢蟲"], answer: "螽斯和蝗蟲"),
                        ChoiceQues(question: "充足的線可以趕走低潮的情緒，是因為光線刺激體內產生？", choice: ["色胺", "荷爾蒙", "費洛蒙"], answer: "荷爾蒙"),
                        ChoiceQues(question: "女孩兒們最喜歡的『美樂蒂』是一隻？", choice: ["小白貓", "小白狗", "小白兔"], answer: "小白兔"),
                        ChoiceQues(question: "希臘神話中的愛神－邱比特，正確英文拼音是？", choice: ["Gupid", "Qupid", "Cupid"], answer: "Cupid"),
                        ChoiceQues(question: "香港電影裡，律師帶著白色假髮，象徵法律的莊嚴，台灣法庭哩， 身穿紫領黑袍的是？", choice: ["律師", "法官", "檢察官"], answer: "檢察官"),
                        ChoiceQues(question: "春天常見的花朵，『三色堇』，別稱？", choice: ["貓兒眼", "貓兒臉", "貓耳朵"], answer: "貓兒臉"),
                        ChoiceQues(question: "請問哪一種動物在印度被視為聖物？", choice: ["牛", "老虎", "豬"], answer: "牛"),
                        ChoiceQues(question: "『文蛤』是如何在水中自由行走？", choice: ["噴水動力", "斧足", "隨波逐流"], answer: "斧足"),
                        ChoiceQues(question: "以下哪個諺語和『一隻草一點露』意思不相近？", choice: ["野火燒不盡，春風吹又生", "天空疼憨人", "吃水果拜樹頭"], answer: "吃水果拜樹頭"),
                        ChoiceQues(question: "一府、二路、三艋舺、四月津其中『月津』指的是台南的？", choice: ["鹽水鎮", "白河鎮", "善化鎮"], answer: "鹽水鎮"),
                        ChoiceQues(question: "道路交通安全規則中，幾人以下的客車算小客車？", choice: ["5人", "9人", "12人"], answer: "9人"),
                        ChoiceQues(question: "歌劇大師比才的作品『卡門』，故事背景發生在？", choice: ["西班牙", "義大利", "葡萄牙"], answer: "西班牙"),
                        ChoiceQues(question: "陀螺起源於自宋朝，它最早的名稱是什麼？", choice: ["干干", "十十", "千千"], answer: "千千"),
                        ChoiceQues(question: "女媧是中國歷史神話中的女神，她是誰的妹妹？", choice: ["黃帝", "蚩尤", "伏羲"], answer: "伏羲"),
                        ChoiceQues(question: "視力檢查中所用是『視力表』，沒有出現哪一種英文字母？", choice: ["P", "C", "E"], answer: "P"),
                        ChoiceQues(question: "中國民間故事中『八仙過海』，眾人橫渡的是哪一個海？", choice: ["東海", "南海", "北海"], answer: "東海"),
                        ChoiceQues(question: "常吃甜食除了會發胖、蛀牙，還會影響哪個五官的健康？", choice: ["鼻子", "耳朵", "眼睛"], answer: "眼睛"),
                        ChoiceQues(question: "汽車輪胎有鋼圈支撐，那支撐腳踏車輪子的，我們稱作？", choice: ["輪條", "支條", "幅條"], answer: "幅條"),
                        ChoiceQues(question: "馬英九總統是台灣第幾任總統？", choice: ["第10任", "第11任", "第12任"], answer: "第12任"),
                        ChoiceQues(question: "小西瓜注意到操場上的國旗被風吹向北邊，可以知道現在吹的是什麼　                    風？", choice: ["北風", "東風", "南風"], answer: "南風"),
                        ChoiceQues(question: "勞動量越大，消耗能量越大，應增加哪類的食物的攝取？", choice: ["油脂類", "蛋豆魚肉類", "五穀根莖類"], answer: "五穀根莖類"),
                        ChoiceQues(question: "『神奇寶貝』當中的皮卡丘，擁有哪種特異功能？", choice: ["十萬伏特", "百萬伏特", "千萬伏特"], answer: "十萬伏特"),
                        ChoiceQues(question: "西洋有１２星座，中國有１２生肖，請問１２生肖中第８個是那一個？", choice: ["馬", "羊", "猴"], answer: "羊"),
                        ChoiceQues(question: "蝴蝶與媽媽去逛花市，買了『寶島之光』美名的花，請問它買的是哪種花？", choice: ["鬱金香", "杜鵑花", "蝴蝶蘭"], answer: "蝴蝶蘭"),
                        ChoiceQues(question: "冰箱冷凍庫有異味時，以下那樣東西無法除臭？", choice: ["咖啡渣", "木炭", "白吐司"], answer: "白吐司"),
                        ChoiceQues(question: "校園中都有的公共電話，撥打哪一種號碼需付費？", choice: ["113", "117", "165"], answer: "117")]
    var actionChoiceQueses: [ChoiceQues] = []
    var choiceQues = ChoiceQues(question: "", choice: [], answer: "")
    var index = 0
    var score = 0
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultLable.isHidden = true
        scoreLable.text = String(score)
        actionChoiceQueses = choiceQueses
        nextButton.isHidden = true
        setQues()
    }
    
    @IBAction func choose(_ sender: UIButton) {
        if let choice = sender.title(for: .normal), choice == choiceQues.answer {
            score += 10
            scoreLable.text = String(score)
            sender.setTitleColor(UIColor.green, for: .normal)
        } else {
            sender.setTitleColor(UIColor.red, for: .normal)
            choiceButton.forEach { bt in
                if bt.title(for: .normal) == choiceQues.answer {
                    bt.setTitleColor(UIColor.green, for: .normal)
                }
            }
        }
        if count >= 10 {
            final()
        } else {
            nextButton.isHidden = false
        }
    }
    
    @IBAction func next(_ sender: Any) {
        choiceButton.forEach { bt in
            bt.setTitleColor(UIColor.yellow, for: .normal)
        }
        setQues()
        nextButton.isHidden = true
    }
    
    @IBAction func playAgain(_ sender: Any) {
        resultLable.isHidden = true
        againButton.setTitle("重新來過", for: .normal)
        choiceButton.forEach { bt in
            bt.isEnabled = true
        }
        count = 0
        score = 0
        scoreLable.text = String(score)
        actionChoiceQueses = choiceQueses
        choiceButton.forEach { bt in
            bt.setTitleColor(UIColor.yellow, for: .normal)
        }
        setQues()
    }
    
    func setQues() {
        index = Int.random(in: 0..<actionChoiceQueses.count)
        choiceQues = actionChoiceQueses.remove(at: index)
        questionLable.text = choiceQues.question
        for (i, choice) in choiceQues.choice.shuffled().enumerated() {
            choiceButton[i].setTitle(choice, for: .normal)
        }
        count += 1
    }
    
    func final() {
        choiceButton.forEach { bt in
            bt.isEnabled = false
            bt.setTitle("", for: .disabled)
        }
        questionLable.text = ""
        scoreLable.text = ""
        var msg = ""
        if score > 80 {
            msg = "你是神！"
        } else if score > 60 {
            msg = "還不錯～"
        } else if score > 40 {
            msg = "普普通通"
        } else if score > 20 {
            msg = "喔～不是很好"
        } else {
            msg = "哈囉～\n你活在這個世界嗎？"
        }
        let resultMsg = "你得了\(score)分\n\(msg)"
        resultLable.text = resultMsg
        resultLable.isHidden = false
        againButton.setTitle("再玩一次", for: .normal)
    }
}
