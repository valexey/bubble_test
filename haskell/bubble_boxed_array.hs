import Data.Array
import Data.IORef
import Control.Monad
import System.Random

print_all arr = do
    forM_ (indices arr) $ \i -> do
        print =<< readIORef (arr ! i)

main = do
    let nums = 40000
    ios <- replicateM nums (newIORef 0)
    let arr = listArray (1, nums) ios

    forM_ (indices arr) $ \i -> do
        writeIORef (arr ! i) (nums - i)
    print_all arr
    putStrLn "---"

    let (i0, iN) = bounds arr
    forM_ [i0..iN] $ \i -> do
        forM_ [i0..iN-i] $ \j -> do
            aj  <- readIORef (arr ! j)
            aj1 <- readIORef (arr ! (j+1))
            when (aj > aj1) $ do
                writeIORef (arr ! j)     aj1
                writeIORef (arr ! (j+1)) aj

    print_all arr

