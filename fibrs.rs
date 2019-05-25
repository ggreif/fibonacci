fn fib_recurse(n: u32) -> u32{
    if n == 1 || n == 0{
        1
    }else {
        fib_recurse(n - 1) + fib_recurse(n - 2)
    }
}

pub fn fib_optimized(n: usize) -> usize{
    let mut list = vec![1, 1];

    for i in list.len()..=n{
        let num = list[i-1] + list[i-2]; //to avoid borrowing mutably and immutably on one line
        list.push(num);
    }

    list[n]
}


fn main(){
    println!("{}", fib_recurse(20));
    println!("{}", fib_optimized(20));
}