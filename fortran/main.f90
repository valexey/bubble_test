program main

    implicit none

    integer, parameter :: n = 40000
    integer, dimension(n) :: arr
    integer :: i, j, tmp
    
    do i = 1, size(arr)
        arr(i) = n - i
    end do
    
    call print_all(arr)
    print *, "---"
    
    do i = 1, size(arr)
        do j = 1, size(arr) - i
            tmp = arr(j)
            if (arr(j) > arr(j + 1)) then
                arr(j) = arr(j + 1)
                arr(j + 1) = tmp
            end if
        end do
    end do
    
    call print_all(arr)

contains

    subroutine print_all(arr)
        integer, dimension(:), intent(in) :: arr
        
        do i = 1, size(arr)
            print *, arr(i)
        end do
    end subroutine print_all

end program main

