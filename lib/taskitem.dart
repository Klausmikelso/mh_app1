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
        Task_it(path: 'assests/talk.png', name: "Meet New Frends",),
        Task_it(path: 'assests/yoga.png', name: "Try Some Yoga"),
        Task_it(path: 'assests/music.png', name: "Listen To Songs"),
        Task_it(path: 'assests/slp.png', name: "Did You Try Sleeping?"),
        Task_it(path: 'assests/exerc.png', name: "Do some Exercise.."),
        
        Task_it(path: 'assests/travel.png', name:"Traveling can help a bit"),
        
    ];
  }
}