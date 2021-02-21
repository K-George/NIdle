package discovery.others;

public class Tuple<X,Y> {
    public final X first;
    public final Y second;
    public Tuple(X first,Y second){
        this.first = first;
        this.second = second;
    }

    @Override
    public String toString(){
        return "(" + first + ", " + second + ")";
    }

    @Override
    public boolean equals(Object obj) {
        if(obj instanceof Tuple){
            Tuple tuple = (Tuple)obj;
            return first.equals(tuple.first)&& second.equals(tuple.second);
        }
        return super.equals(obj);
    }
}
