//
//  CourseSchedule.swift
//  Topolo
//
//  Created by Takamiya Kengo on 2021-04-08.
//

import Foundation

func checkSchedule(course : Int, pre : [[Int]]) {
  
  var indegree = [Int](repeating: 0, count: course)
  var arr = [[Int]](repeating: [Int](), count: course)
  
  for i in 0...pre.count-1 {
    arr[pre[i][0]].append(pre[i][1])
    indegree[pre[i][1]] += 1
  }
  
  if indegree.index(of: 0) == nil {
    print("false")
  } else {
    print("true")
  }
  
  let  q = Queue<Int>()
  
  for i in 0...course-1 {
    if indegree[i] == 0 {
      q.enqueue(item: i)
    }
  }
  
  
  
  
  
  
  while !q.isEmpty() {
    let u = q.dequeue()!
    //    print(u)
    for i in arr[u] {
      if indegree[i] == 0 {
        q.enqueue(item: i)
      }
    }
  }
  
  
}
