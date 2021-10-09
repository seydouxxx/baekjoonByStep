//DFS와 BFS
//
//문제
//그래프를 DFS로 탐색한 결과와 BFS로 탐색한 결과를 출력하는 프로그램을 작성하시오. 단, 방문할 수 있는 정점이 여러 개인 경우에는 정점 번호가 작은 것을 먼저 방문하고, 더 이상 방문할 수 있는 점이 없는 경우 종료한다. 정점 번호는 1번부터 N번까지이다.
//
//입력
//첫째 줄에 정점의 개수 N(1 ≤ N ≤ 1,000), 간선의 개수 M(1 ≤ M ≤ 10,000), 탐색을 시작할 정점의 번호 V가 주어진다. 다음 M개의 줄에는 간선이 연결하는 두 정점의 번호가 주어진다. 어떤 두 정점 사이에 여러 개의 간선이 있을 수 있다. 입력으로 주어지는 간선은 양방향이다.
//
//출력
//첫째 줄에 DFS를 수행한 결과를, 그 다음 줄에는 BFS를 수행한 결과를 출력한다. V부터 방문된 점을 순서대로 출력하면 된다.
//
//예제 입력 1
//4 5 1
//1 2
//1 3
//1 4
//2 4
//3 4
//예제 출력 1
//1 2 4 3
//1 2 3 4
//예제 입력 2
//5 5 3
//5 4
//5 2
//1 2
//3 4
//3 1
//예제 출력 2
//3 1 2 5 4
//3 1 4 2 5
//예제 입력 3
//1000 1 1000
//999 1000
//예제 출력 3
//1000 999
//1000 999


//func dfs (_ graph: [Int: [Int]], from: Int) -> [Int] {
////    dfs는 큐 대신 스택 사용
//    var visited: [Int] = []
//    var queue: [Int] = [from]
//
//    while !queue.isEmpty {
//        let node = queue.removeLast()
//        if visited.contains(node) { continue }
//
//        visited.append(node)
//        queue += graph[node]?.sorted().reversed() ?? []
//    }
//    (0..<visited.count).forEach { i in
//        print(visited[i], terminator: " ")
//    }
//    print()
//    return visited
//}
//func bfs (_ graph: [Int: [Int]], from: Int) -> [Int] {
////  bfs는 스택 대신 큐 사용
//    var visited: [Int] = []
//    var queue: [Int] = [from]
//
//    while !queue.isEmpty {
//        let node = queue.removeFirst()
//        if visited.contains(node) { continue }
//
//        visited.append(node)
//        queue += graph[node]?.sorted() ?? []
//    }
//    (0..<visited.count).forEach { i in
//        print(visited[i], terminator: " ")
//    }
//    print()
//    return visited
//}
//let n = readLine()!.split{$0==" "}.map{Int(String($0))!}
//var a: [Int: [Int]] = [:]
//(0..<n[1]).forEach{ _ in
//    let e = readLine()!.split{$0==" "}.map{Int(String($0))!}
//    if var node = a[e[0]] {
//        node.append(e[1])
//        a[e[0]] = node
//    } else {
//        a[e[0]] = [e[1]]
//    }
//    if var node = a[e[1]] {
//        node.append(e[0])
//        a[e[1]] = node
//    } else {
//        a[e[1]] = [e[0]]
//    }
//}
////print(a)
//dfs(a, from: n[2])
//bfs(a, from: n[2])

//import Foundation
//
//func findTarget (number: [Int], lvl: Int, target: Int, value: Int, answer: inout Int) {
//    if lvl >= number.count {
//        if value == target { answer += 1 }
//        return
//    }
//    findTarget(number: number, lvl: lvl+1, target: target, value: value+number[lvl], answer: &answer)
//    findTarget(number: number, lvl: lvl+1, target: target, value: value-number[lvl], answer: &answer)
//}
//func solution(_ numbers:[Int], _ target:Int) -> Int {
//    var answer = 0
//
//    findTarget(number: numbers, lvl: 0, target: target, value: 0, answer: &answer)
//
//    return answer
//}
//print(solution([1, 1, 1, 1, 1], 3))

let n = readLine()!.split{$0==" "}.map{Int(String($0))!}

