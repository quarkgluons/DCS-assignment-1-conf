#include <stdlib.h>
#include <stdio.h>
#include <pthread.h>
#include <sys/socket.h>

void foo() {
  printf("Thread executing");
}

int main() {
  printf("Hello World\n");


  socket(AF_INET, SOCK_STREAM, 0);


  pthread_t td;
  if (pthread_create(&td, NULL, (void *)foo, NULL) != 0) {
    printf("Could not create thread\n");
    exit(-1);
  }

  void *res;
  pthread_join(td, &res);
  return 0;
}
