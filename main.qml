import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "fetchData.js" as JS

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        anchors.fill: parent; spacing: 10
        Label{ text: "Taiwan weather"; font.pixelSize: 30}
        ComboBox {
            id: comboBoxId
            textRole: "text"
            valueRole: "location"
            model: ListModel {
                id: locationModelId

                ListElement {text: "宜蘭縣"; location: "F-D0047-001"}
                ListElement {text: "桃園市"; location: "F-D0047-005"}
                ListElement {text: "新竹縣"; location: "F-D0047-009"}
                ListElement {text: "苗栗縣"; location: "F-D0047-013"}
                ListElement {text: "彰化縣"; location: "F-D0047-017"}
                ListElement {text: "南投縣"; location: "F-D0047-021"}
                ListElement {text: "雲林縣"; location: "F-D0047-025"}
                ListElement {text: "嘉義縣"; location: "F-D0047-029"}
                ListElement {text: "苗栗縣"; location: "F-D0047-033"}
                ListElement {text: "屏東縣"; location: "F-D0047-037"}
                ListElement {text: "臺東縣"; location: "F-D0047-041"}
                ListElement {text: "花蓮縣"; location: "F-D0047-045"}
                ListElement {text: "澎湖縣"; location: "F-D0047-049"}
                ListElement {text: "基隆市"; location: "F-D0047-053"}
                ListElement {text: "嘉義市"; location: "F-D0047-057"}
                ListElement {text: "臺北市"; location: "F-D0047-061"}
                ListElement {text: "高雄市"; location: "F-D0047-065"}
                ListElement {text: "新北市"; location: "F-D0047-069"}
                ListElement {text: "臺中市"; location: "F-D0047-073"}
                ListElement {text: "臺南市"; location: "F-D0047-077"}
                ListElement {text: "連江縣"; location: "F-D0047-081"}
                ListElement {text: "連江縣"; location: "F-D0047-085"}

            }
            onActivated: {
                if(currentIndex === 0)
                { districtComboBoxId.model =  ["頭城鎮","礁溪鄉","壯圍鄉","員山鄉","宜蘭市","大同鄉","五結鄉",
                                               "三星鄉","羅東鎮","冬山鄉","南澳鄉","蘇澳鎮"]}

                if(currentIndex === 1)
                { districtComboBoxId.model = ["大園區","蘆竹區","觀音區","龜山區","桃園區","中壢區","新屋區",
                                              "八德區","平鎮區","楊梅區","大溪區","龍潭區","復興區"]}

                if(currentIndex === 2)
                { districtComboBoxId.model = ["新豐鄉","湖口鄉","新埔鎮","竹北市","關西鎮","芎林鄉",
                                              "竹東鎮","寶山鄉","尖石鄉","橫山鄉","北埔鄉","峨眉鄉","五峰鄉"]}

                if(currentIndex === 3)
                { districtComboBoxId.model =["竹南鎮","頭份市","三灣鄉","造橋鄉","後龍鎮","南庄鄉","頭屋鄉","獅潭鄉",
                                             "苗栗市","西湖鄉","通霄鎮","公館鄉","銅鑼鄉","泰安鄉","苑裡鎮","大湖鄉",
                                             "三義鄉","卓蘭鎮"]}

                if(currentIndex === 4)
                { districtComboBoxId.model =["伸港鄉","和美鎮","線西鄉","鹿港鎮","彰化市","秀水鄉","福興鄉","花壇鄉",
                                             "芬園鄉","芳苑鄉","埔鹽鄉","大村鄉","二林鎮","員林市","溪湖鎮","埔心鄉",
                                             "永靖鄉","社頭鄉","埤頭鄉","田尾鄉","大城鄉","田中鎮","北斗鎮","竹塘鄉",
                                             "溪州鄉","二水鄉"]}

                if(currentIndex === 5)
                { districtComboBoxId.model =["仁愛鄉","國姓鄉","埔里鎮","草屯鎮","中寮鄉","南投市",
                                             "魚池鄉","水里鄉","名間鄉","信義鄉","集集鎮","竹山鎮","鹿谷鄉"]}

                if(currentIndex === 6)
                { districtComboBoxId.model =["麥寮鄉","二崙鄉","崙背鄉","西螺鎮","莿桐鄉","林內鄉",
                                             "臺西鄉","土庫鎮","虎尾鎮","褒忠鄉","東勢鄉","斗南鎮",
                                             "四湖鄉","古坑鄉","元長鄉","大埤鄉","口湖鄉","北港鎮",
                                             "水林鄉","斗六市"]}

                if(currentIndex === 7)
                { districtComboBoxId.model =["大林鎮","溪口鄉","阿里山鄉","梅山鄉","新港鄉","民雄鄉",
                                             "六腳鄉","竹崎鄉","東石鄉","太保市","番路鄉","朴子市",
                                             "水上鄉","中埔鄉","布袋鎮","鹿草鄉","義竹鄉","大埔鄉"]}

                if(currentIndex === 8)
                { districtComboBoxId.model =["高樹鄉","三地門鄉","霧臺鄉","里港鄉","鹽埔鄉","九如鄉",
                                             "長治鄉","瑪家鄉","屏東市","內埔鄉","麟洛鄉","泰武鄉",
                                             "萬巒鄉","竹田鄉","萬丹鄉","來義鄉","潮州鎮","新園鄉",
                                             "崁頂鄉","新埤鄉","南州鄉","東港鎮","林邊鄉","佳冬鄉",
                                             "春日鄉","獅子鄉","琉球鄉","枋山鄉","牡丹鄉","滿州鄉",
                                             "車城鄉","恆春鎮","枋寮鄉"]}

                if(currentIndex === 9)
                { districtComboBoxId.model =["長濱鄉","海端鄉","池上鄉","成功鎮","關山鎮","東河鄉","鹿野鄉","延平鄉",
                                             "卑南鄉","臺東市","太麻里鄉","綠島鄉","達仁鄉","大武鄉","蘭嶼鄉","金峰鄉"]}

                if(currentIndex === 10)
                { districtComboBoxId.model =["秀林鄉","新城鄉","花蓮市","吉安鄉","壽豐鄉","萬榮鄉","鳳林鎮","豐濱鄉",
                                             "光復鄉","卓溪鄉","瑞穗鄉","玉里鎮","富里鄉"]}

                if(currentIndex === 11)
                { districtComboBoxId.model =["白沙鄉","西嶼鄉","湖西鄉","馬公市","望安鄉","七美鄉"]}

                if(currentIndex === 12)
                { districtComboBoxId.model =["安樂區","中山區","中正區","七堵區","信義區","仁愛區","暖暖區"]}

                if(currentIndex === 13)
                { districtComboBoxId.model =["北區","香山區","東區"]}

                if(currentIndex === 14)
                { districtComboBoxId.model =["東區","西區"]}

                if(currentIndex === 15)
                { districtComboBoxId.model =["北投區","士林區","內湖區","中山區","大同區","松山區","南港區","中正區",
                                             "萬華區","信義區","大安區","文山區"]}

                if(currentIndex === 16)
                { districtComboBoxId.model =["楠梓區","左營區","三民區","鼓山區","苓雅區","新興區","前金區","鹽埕區",
                                             "前鎮區","旗津區","小港區","那瑪夏區","甲仙區","六龜區","杉林區","內門區",
                                             "茂林區","美濃區","旗山區","田寮區","湖內區","茄萣區","阿蓮區","路竹區",
                                             "永安區","岡山區","燕巢區","彌陀區","橋頭區","大樹區","梓官區","大社區",
                                             "仁武區","鳥松區","大寮區","鳳山區","林園區","桃源區"]}

                if(currentIndex === 17)
                { districtComboBoxId.model =["石門區","三芝區","金山區","淡水區","萬里區","八里區","汐止區","林口區",
                                             "五股區","瑞芳區","蘆洲區","雙溪區","三重區","貢寮區","平溪區","泰山區",
                                             "新莊區","石碇區","板橋區","深坑區","永和區","樹林區","中和區","土城區",
                                             "新店區","坪林區","鶯歌區","三峽區","烏來區"]}

                if(currentIndex === 18)
                { districtComboBoxId.model =["北屯區","西屯區","北區","南屯區","西區","東區","中區",
                                             "南區","和平區","大甲區","大安區","外埔區","后里區",
                                             "清水區","東勢區","神岡區","龍井區","石岡區","豐原區",
                                             "梧棲區","新社區","沙鹿區","大雅區","潭子區","大肚區",
                                             "太平區","烏日區","大里區","霧峰區"]}

                if(currentIndex === 19)
                { districtComboBoxId.model =["安南區","中西區","安平區","東區","南區","北區","白河區","後壁區","鹽水區",
                                             "新營區","東山區","北門區","柳營區","學甲區","下營區","六甲區","南化區",
                                             "將軍區","楠西區","麻豆區","官田區","佳里區","大內區","七股區","玉井區",
                                             "善化區","西港區","山上區","安定區","新市區","左鎮區","新化區","永康區",
                                             "歸仁區","關廟區","龍崎區","仁德區"]}

                if(currentIndex === 20)
                { districtComboBoxId.model =["南竿鄉","北竿鄉","莒光鄉","東引鄉"]}

                if(currentIndex === 21)
                { districtComboBoxId.model =["金城鎮","金湖鎮","金沙鎮","金寧鄉","烈嶼鄉","烏坵鄉"]}

                console.log("[" + (currentIndex+1) + "] " + currentText + " is found.")
            }
        }
        ComboBox {
            id: districtComboBoxId
            model: ""
            onActivated: {
                console.log("[" + (currentIndex+1) + "] " + currentText + " is activated")
            }
        }

        Rectangle {
            color: "skyblue"
            width: parent.width
            height: 200
            Text {
                anchors.centerIn: parent
                text: "Ground"
                font.pixelSize: 30
                color: "white"
            }
        }
        Button {
            id: buttonId
            text: "Fetch"
            onClicked: {
                JS.fetchData(weatherUrl, function(object){
                    if(object){
                        var data = JSON.parse(object)
                        console.log("Data fetched")
                        for( var i=0; i < 22; i++)
                        {
                            locationListModelId.append({"locationName": data.records.location[i].locationName})
                            for( var j=0; j < 3; j++)
                            {
                                locationListModelId.append({"startTime": data.records.location[i].weatherElement[0].time[j].startTime})
                                locationListModelId.append({"parameterName": data.records.location[i].weatherElement[0].time[j].parameter.parameterName + " C"})
                                parameterListModelId.append({"startTime": data.records.location[i].weatherElement[0].time[j].startTime})
                                parameterListModelId.append({"parameterName": data.records.location[i].weatherElement[0].time[j].parameter.parameterName + " C"})
                            }
                        }
                    }else{
                        console.log("Somthing wrong")
                    }
                })
            }
        }

    }

}
