#include <zuno/logger.hpp>
#include <zuno/zuno.hpp>

int main() {
  zuno::App app;

  app.get("/hello", [](auto &req, auto &res) {
    zuno::log::info("Incomming request");

    res.json({{"Hello", "World"}});
  });

  app.listen(3456);
  return 0;
}