class Task_it{
  String? name;
  bool isdone;
  String? path;
  Task_it(
    {
      required this.path,
      this.isdone = false,
      required this.name,
    }
  );
  static List<Task_it> Task_list(){
    return [
        Task_it(path: 'assests/park.png', name: "meet new frends",),
        Task_it(path: 'assests/park.png', name: "Listen fav songs"),
        Task_it(path: 'assests/park.png', name: "Practise self care"),
        Task_it(path: 'assests/park.png', name: "volunteer"),
        
    ];
  }
}