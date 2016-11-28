fn print_all(arr: &[i32]) {
    for i in 0..arr.len() {
        println!("{}", arr[i]); 
    }    
}


fn main() {
    const N: usize = 40000;
    let mut arr: [i32; N] = [0; N];

    for i in 0..arr.len() { arr[i] = (N-i) as i32; }

    print_all(&arr);
    println!("-----"); 

    for i in 0..arr.len() {
        for j in 0..arr.len() - 1 - i {
            let tmp = arr[j];
            if  arr[j] > arr[j + 1] {
                arr[j] = arr[j + 1];
                arr[j + 1] = tmp;
            }
        }
    }
    print_all(&arr);
}
