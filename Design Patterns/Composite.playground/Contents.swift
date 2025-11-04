import Cocoa

protocol Component {
    func execute()
}

struct Leaf: Component { //É um elemento final
    func execute() {
        print("Im a leaf")
    }
}

struct Flower: Component { //É um elemento final
    func execute() {
        print("Im a flower")
    }
}

struct Branch: Component { //É o elemento que pode ter outros elementos dentro, inclusive elementos que abrigam elementos, como a própria branch
    var children: [Component]
    
    init(_ children: Component...) {
        self.children = children
    }
    
    func execute() {
        print("Iniciando Percorrimento da Branch")
        for child in children { //Percorre todas os filhos dessa branch
            child.execute()
        }
    }
    
    mutating func add(child: Component) {
        children.append(child)
    }
}

var root = Branch(Branch(Leaf(), Flower(), Branch(Leaf(), Flower()), Leaf()), Branch(Leaf()))

root.execute()

