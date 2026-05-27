SRC = mpc.c # $(wildcard deps/*/*.c)
CFLAGS = -Ideps -Wall -Wextra -std=c23 
ifneq ($(findstring clang,$(CC)),)
    CFLAGS += -fdefer-ts
endif

mpc.pch: $(SRC)
	$(CC) -c $(CFLAGS) $^ -o $@
