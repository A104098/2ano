public class Ficha2Ex{
    public int min(int[] array){
        int result = Integer.MAX_VALUE;
        for(int i = 0; i < array.length; i++){
            if(array[i] <= result){
                result = array[i];
            }
        }
        return result;
    }

    public int[] inBetween(int[] array, int frim, int to){
        if(from>to){
            return "error";
        }
        int size = to - from;
        int[] result = new int[size];
        for(int i = 0; i < size; i++){
            result[i] = array[from + i];
        }

        return result;
    }
        public int[] inBetween(int[] array, int from, int to){
            return Arrays.copyOfRange(array, from, to+1);

        }

        public int[] inCommon(int[] array1, int[] array2){
            int result = new int[array1.length];
            int total = 0;
           for(int i = 0; i < array1.length; i++){
               for(int j = 0; j < array2.length; j++){
                   if(array1[i] == array2[j]){
                    boolean exists= false;
                    for(int k = 0; k < result.lenght && !exists; k++){
                        if(array1[i] == result[k]){
                            exists = true;
                            }
                        }
                            if(!exists){
                                result[total] = array1[i];
                                total++;
                            }
                    }
            return Arrays.copyOf(result, total);
                }
             }
        }
    }