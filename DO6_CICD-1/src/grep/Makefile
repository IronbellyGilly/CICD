CI = gcc
CC = $(CI) $(OPT)

all :s21_grep
	rm -rf *.o

s21_grep: s21_grep.o
	$(CC) s21_grep.o -o s21_grep

s21_grep.o: s21_grep.c
	$(CC) -c $< -o $@

clean:
	rm -rf *.o
	rm -rf s21_grep
	rm -rf *.log

rebuild:
	rm -rf *.o
	rm s21_grep

style: s21_grep
	clang-format -n *.c

clang:
	clang-format -i *.c

test: s21_grep
	bash testing_grep.sh
