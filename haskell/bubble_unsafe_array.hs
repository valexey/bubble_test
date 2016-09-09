import Data.Array.IO
import Data.Array.Base
import Control.Monad

print_all :: IOUArray Int Int -> IO ()
print_all arr = do
    (i0, iN) <- getBounds arr
    forM_ [i0..iN] $ \i -> do
        print =<< unsafeRead arr i

main = do
    let nums = 40000
    arr <- newArray (0, nums-1) 0 :: IO (IOUArray Int Int)

    forM_ [0..nums-1] $ \i -> do
        unsafeWrite arr i (nums - i)
    print_all arr
    putStrLn "---"

    forM_ [0..nums-1] $ \i -> do
        forM_ [0..nums-2-i] $ \j -> do
            aj  <- unsafeRead arr   j
            aj1 <- unsafeRead arr (j+1)
            when (aj > aj1) $ do
                unsafeWrite arr   j   aj1
                unsafeWrite arr (j+1) aj

    print_all arr

