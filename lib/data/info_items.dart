enum InfoItems{
skills,
workExperience,
projects,
education,
achievements,
languages,
}

class InfoModel{
 InfoItems item;
 String name;
 InfoModel({this.item,this.name});
}

 List<InfoModel> kInfo =[
 InfoModel(item:InfoItems.skills,name:"Skills"),
 InfoModel(item:InfoItems.workExperience,name:"Work Experience"),
 InfoModel(item:InfoItems.projects,name:"Projects"),
 InfoModel(item:InfoItems.education,name:"Education"),
 InfoModel(item:InfoItems.achievements,name:"Achievements"),
 InfoModel(item:InfoItems.languages,name:"Languages"),
];
