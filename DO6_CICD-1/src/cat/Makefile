s21_cat: s21_cat.o
	gcc s21_cat.o -o s21_cat
	
s21_cat.o: s21_cat.c 
	gcc -Wall -Werror -Wextra -c s21_cat.c 

clean:
	rm -rf *.o s21_cat

rebuild:
	make clean
	make s21_cat

style: s21_cat
	clang-format -n *.c 

clang: 
	clang-format -i *.c 

test: s21_cat
	bash testing_cat.sh
