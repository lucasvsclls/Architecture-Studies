protocol Strategy {
    func execute()
}

struct ConcreteStrategyCorte: Strategy {
    func execute() {
        print("Passou a bola com um corte")
    }
}
struct ConcreteStrategyManchete: Strategy {
    func execute() {
        print("Passou a bola de manchete")
    }
}
class Context {
    var strategy: Strategy
    
    init(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func setStrategy(strategy: Strategy) {
        self.strategy = strategy
    }
    
    func doSomething() {
        strategy.execute()
    }
}

var volleyContext = Context(strategy: ConcreteStrategyCorte())

volleyContext.doSomething()

volleyContext.setStrategy(strategy: ConcreteStrategyManchete())

volleyContext.doSomething()



