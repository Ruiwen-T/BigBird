//like simple LLnode
//question: do we actually need this interface (to be a node)?
//since we can just import linkedlist, then add all the different stations
//instead of making our own node, we can make this interface have different methods
interface Station {
  //get left
  Station leftStation();
  //get right
  Station rightStation();
}
