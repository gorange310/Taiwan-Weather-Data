import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import "fetchData.js" as JS


ApplicationWindow {
    id: rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    color: "lightgrey"

    property url openDataUrl
    property var jsonData

    property string datasetDescription
    property string locationName
    property var description:[]

    ColumnLayout {
        anchors.fill: parent; spacing: 10
        Label{
            text: "Taiwan Weather"
            font.pixelSize: 30
            Layout.fillWidth: true
            horizontalAlignment: Text.AlignHCenter
            padding: 10
            background: Rectangle{ anchors.fill: parent; color: "dodgerblue"}}
        RowLayout {
            ComboBox {
                id: comboBoxId
                textRole: "text"
                valueRole: "location"
                Layout.fillWidth: true
                model: ListModel {
                    id: locationModelId

                    ListElement {text: "宜蘭縣"; location: "F-D0047-001"} //0
                    ListElement {text: "桃園市"; location: "F-D0047-005"}
                    ListElement {text: "新竹縣"; location: "F-D0047-009"} //2
                    ListElement {text: "苗栗縣"; location: "F-D0047-013"}
                    ListElement {text: "彰化縣"; location: "F-D0047-017"} //4
                    ListElement {text: "南投縣"; location: "F-D0047-021"}
                    ListElement {text: "雲林縣"; location: "F-D0047-025"} //6
                    ListElement {text: "嘉義縣"; location: "F-D0047-029"}
                    ListElement {text: "屏東縣"; location: "F-D0047-033"} //8
                    ListElement {text: "臺東縣"; location: "F-D0047-037"}
                    ListElement {text: "花蓮縣"; location: "F-D0047-041"} //10
                    ListElement {text: "澎湖縣"; location: "F-D0047-045"}
                    ListElement {text: "基隆市"; location: "F-D0047-049"} //12
                    ListElement {text: "新竹市"; location: "F-D0047-053"}
                    ListElement {text: "嘉義市"; location: "F-D0047-057"} //14
                    ListElement {text: "臺北市"; location: "F-D0047-061"}
                    ListElement {text: "高雄市"; location: "F-D0047-065"} //16
                    ListElement {text: "新北市"; location: "F-D0047-069"}
                    ListElement {text: "臺中市"; location: "F-D0047-073"} //18
                    ListElement {text: "臺南市"; location: "F-D0047-077"}
                    ListElement {text: "連江縣"; location: "F-D0047-081"} //20
                    ListElement {text: "金門縣"; location: "F-D0047-085"}

                }
                onActivated: {
                    if(currentIndex === 0)
                    { districtComboBoxId.model =  ["羅東鎮","蘇澳鎮","頭城鎮","礁溪鄉","三星鄉",
                                                   "大同鄉","宜蘭市","南澳鄉","壯圍鄉","員山鄉",
                                                   "冬山鄉","五結鄉"]}

                    if(currentIndex === 1)
                    { districtComboBoxId.model = ["桃園區","復興區","中壢區","觀音區","新屋區","平鎮區","蘆竹區","大園區","大溪區","楊梅區","龍潭區","龜山區","八德區"]}

                    if(currentIndex === 2)
                    { districtComboBoxId.model = ["峨眉鄉","竹北市","尖石鄉","竹東鎮","五峰鄉","新埔鎮","寶山鄉","橫山鄉","北埔鄉","關西鎮","湖口鄉","新豐鄉","芎林鄉"]}

                    if(currentIndex === 3)
                    { districtComboBoxId.model = ["銅鑼鄉","南庄鄉","苗栗市","頭屋鄉","苑裡鎮","三義鄉","卓蘭鎮","泰安鄉","大湖鄉","公館鄉","通霄鎮","西湖鄉","竹南鎮","造橋鄉","頭份市","三灣鄉","後龍鎮","獅潭鄉"]}

                    if(currentIndex === 4)
                    { districtComboBoxId.model = ["溪湖鎮","員林市","社頭鄉","永靖鄉","北斗鎮","二水鄉","大村鄉","田中鎮","埔心鄉","埔鹽鄉","芬園鄉","二林鎮","埤頭鄉","田尾鄉","福興鄉","伸港鄉","花壇鄉","秀水鄉","鹿港鎮","大城鄉","彰化市","芳苑鄉","線西鄉","溪州鄉","和美鎮","竹塘鄉"]}

                    if(currentIndex === 5)
                    { districtComboBoxId.model = ["魚池鄉","中寮鄉","國姓鄉","集集鎮","竹山鎮","鹿谷鄉","名間鄉","南投市","信義鄉","水里鄉","草屯鎮","埔里鎮","仁愛鄉"]}

                    if(currentIndex === 6)
                    { districtComboBoxId.model = ["大埤鄉","口湖鄉","古坑鄉","四湖鄉","莿桐鄉","水林鄉","西螺鎮","褒忠鄉","虎尾鎮","東勢鄉","北港鎮","元長鄉","土庫鎮","臺西鄉","二崙鄉","林內鄉","斗南鎮","麥寮鄉","斗六市","崙背鄉"]}

                    if(currentIndex === 7)
                    { districtComboBoxId.model = ["鹿草鄉","義竹鄉","溪口鄉","大埔鄉","民雄鄉","番路鄉","六腳鄉","新港鄉","阿里山鄉","朴子市","中埔鄉","太保市","水上鄉","大林鎮","梅山鄉","布袋鎮","竹崎鄉","東石鄉"]}

                    if(currentIndex === 8)
                    { districtComboBoxId.model = ["來義鄉","東港鎮","枋山鄉","潮州鎮","滿州鄉","萬丹鄉","霧臺鄉","恆春鎮","三地門鄉","佳冬鄉","南州鄉","屏東市","車城鄉","琉球鄉","麟洛鄉","泰武鄉","長治鄉","瑪家鄉","里港鄉","九如鄉","竹田鄉","內埔鄉","枋寮鄉","新埤鄉","鹽埔鄉","獅子鄉","春日鄉","萬巒鄉","高樹鄉","牡丹鄉","崁頂鄉","新園鄉","林邊鄉"]}

                    if(currentIndex === 9)
                    { districtComboBoxId.model = ["成功鎮","延平鄉","臺東市","海端鄉","卑南鄉","達仁鄉","關山鎮","金峰鄉","綠島鄉","大武鄉","太麻里鄉","池上鄉","鹿野鄉","蘭嶼鄉","長濱鄉","東河鄉"]}

                    if(currentIndex === 10)
                    { districtComboBoxId.model = ["花蓮市","萬榮鄉","秀林鄉","玉里鎮","鳳林鎮","卓溪鄉","富里鄉","瑞穗鄉","豐濱鄉","吉安鄉","新城鄉","光復鄉","壽豐鄉"]}

                    if(currentIndex === 11)
                    { districtComboBoxId.model = ["湖西鄉","馬公市","西嶼鄉","白沙鄉","七美鄉","望安鄉"]}

                    if(currentIndex === 12)
                    { districtComboBoxId.model = ["中正區","信義區","安樂區","暖暖區","七堵區","中山區","仁愛區"]}

                    if(currentIndex === 13)
                    { districtComboBoxId.model = ["北區","東區","香山區"]}

                    if(currentIndex === 14)
                    { districtComboBoxId.model = ["西區","東區"]}

                    if(currentIndex === 15)
                    { districtComboBoxId.model = ["北投區","松山區","士林區","內湖區","中山區","中正區","信義區","大安區","文山區","南港區","大同區","萬華區"]}

                    if(currentIndex === 16)
                    { districtComboBoxId.model = ["新興區","梓官區","三民區","楠梓區","左營區","鼓山區","鹽埕區","燕巢區","田寮區","阿蓮區","路竹區","湖內區","前鎮區","茄萣區","苓雅區","永安區","前金區","彌陀區","旗山區","美濃區","鳥松區","岡山區","大樹區","大寮區","林園區","鳳山區","小港區","旗津區","六龜區","甲仙區","杉林區","內門區","茂林區","桃源區","大社區","那瑪夏區","仁武區","橋頭區"]}

                    if(currentIndex === 17)
                    { districtComboBoxId.model = ["淡水區","鶯歌區","三峽區","永和區","金山區","新莊區","貢寮區","新店區","烏來區","樹林區","萬里區","八里區","板橋區","石門區","三重區","雙溪區","中和區","平溪區","三芝區","坪林區","石碇區","五股區","泰山區","林口區","深坑區","汐止區","瑞芳區","土城區","蘆洲區"]}

                    if(currentIndex === 18)
                    { districtComboBoxId.model = ["外埔區","大安區","石岡區","沙鹿區","清水區","后里區","梧棲區","潭子區","神岡區","新社區","大雅區","大甲區","東勢區","東區","龍井區","中區","霧峰區","西區","烏日區","南區","大肚區","西屯區","和平區","北區","北屯區","太平區","南屯區","大里區","豐原區"]}

                    if(currentIndex === 19)
                    { districtComboBoxId.model = ["下營區","六甲區","東山區","關廟區","麻豆區","歸仁區","柳營區","左鎮區","仁德區","後壁區","鹽水區","楠西區","白河區","南化區","大內區","北區","佳里區","南區","東區","官田區","永康區","龍崎區","善化區","北門區","新化區","七股區","將軍區","中西區","學甲區","安平區","西港區","安南區","山上區","新營區","玉井區","新市區","安定區"]}

                    if(currentIndex === 20)
                    { districtComboBoxId.model = ["南竿鄉","北竿鄉","莒光鄉","東引鄉"]}

                    if(currentIndex === 21)
                    { districtComboBoxId.model = ["烏坵鄉","烈嶼鄉","金寧鄉","金湖鎮","金沙鎮","金城鎮"]}

                    console.log("[" + currentIndex + "] " + currentValue + " is found.")
                    openDataUrl = "https://opendata.cwb.gov.tw/api/v1/rest/datastore/" + currentValue + "?Authorization=CWB-3EA618C0-B4A9-4F99-9D8E-DBE4EF20F04D&format=JSON&sort=time"
                }
            }
            ComboBox {
                id: districtComboBoxId
                model: ""
                Layout.fillWidth: true
                onActivated: {
                    console.log("[" + currentIndex + "] " + currentText + " is activated")

                }
            }

            Button {
                id: buttonId
                text: "Fetch Weather"
                Layout.fillWidth: true
                onClicked: {
                    JS.fetchData(openDataUrl, function(fetchData){

                        if(fetchData){
                            var object = JSON.parse(fetchData)
                            var weatherElement = object.records.locations[0].location[districtComboBoxId.currentIndex].weatherElement

                            datasetDescription = object.records.locations[0].datasetDescription

                            for( var i in weatherElement)
                            {
                                myListModelId.append({"description": weatherElement[i].description})

                                for(var j in weatherElement[i].time)
                                {
                                    myListModelId.append({"startTime": weatherElement[i].time[j].startTime})

                                    for(var k in weatherElement[i].time[j].elementValue )
                                    {
                                        myListModelId.append({"value": weatherElement[i].time[j].elementValue[k].value})
                                        myListModelId.append({"measures": weatherElement[i].time[j].elementValue[k].measures})

                                        console.log(weatherElement[i].time[j].elementValue[k].value + weatherElement[i].time[j].elementValue[k].measures)
                                    }
                                }
                            }
                        }
                    })
                }
            }
        }
        RowLayout{
            Label {
                anchors.centerIn: parent
                text : datasetDescription
                font.pointSize: 20
                Layout.fillWidth: true
                horizontalAlignment: Text.AlignHCenter
            }
            Label {
                anchors.centerIn: parent
                text : location
                font.pointSize: 13
                horizontalAlignment: Text.AlignHCenter
            }
        }

        ListModel { id: myListModelId }

        ListView {
            id: myListViewId
            model: myListModelId
            Layout.fillWidth: true
            Layout.fillHeight: true
            delegate: Component {
                Rectangle {
                    id : rectangleId
                    width : rootId.width
                    height: textId.implicitHeight+10
                    color: "grey"
                    border.color: "white"
                    radius: 5


                    Text {
                        anchors.centerIn: parent
                        text : startTime
                        font.pointSize: 18
                        horizontalAlignment: Text.AlignHCenter
                    }
                    Text {
                        id : textId
                        anchors.centerIn: parent
                        text : description
                        font.pointSize: 20
                        horizontalAlignment: Text.AlignHCenter
                    }
                    Text {
                        anchors.centerIn: parent
                        text : model.value[index] + model.mesures[index]
                        font.pointSize: 18
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
//                    Text {
//                        anchors.centerIn: parent
//                        text : measures
//                        font.pointSize: 13
//                        wrapMode: Text.WordWrap
//                        verticalAlignment: Text.AlignVCenter
//                        horizontalAlignment: Text.AlignHCenter
//                    }
                }
            }
        }

    }
}
