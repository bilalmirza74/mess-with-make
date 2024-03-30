CC = gcc  # Define the C compiler (can be overridden)
CFLAGS = -Wall  # Optional: Add warning flags

# Target: Build the executable `hello`
hello: hello.o
	$(CC) $(CFLAGS) -o hello hello.o  # Command indented with a single tab

# Rule to compile a source file (.c) into an object file (.o)
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@  # Command indented with a single tab

# Phony target for cleaning up compiled files
.PHONY: clean

clean:
	rm -f hello hello.o  # Remove the executable and object file
