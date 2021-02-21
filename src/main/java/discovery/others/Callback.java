package discovery.others;

@FunctionalInterface
public interface Callback<In,Out> {
    Out execute(In params);

}

