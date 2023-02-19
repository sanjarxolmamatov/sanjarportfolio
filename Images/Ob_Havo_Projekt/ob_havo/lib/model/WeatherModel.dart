class WeatherModel{
  int? temp;
  int? humidity;
  int? speed;
   String? name;
   WeatherModel(this.temp,this.humidity,this.speed,this.name);
   WeatherModel.fromMap(Map<String,dynamic> json){
     temp=json["main"]["temp"];
     temp=json["main"]["humidity"];
     speed=json["wind"]["speed"];
     name=json["name"];
   }
}