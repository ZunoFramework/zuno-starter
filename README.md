# Zuno Framework Starter Project

Welcome to the Zuno Framework Starter Project! This project provides a basic structure to get you started with building web applications using the Zuno Framework. The framework is designed to be similar to Express.js, making it familiar for those who are already comfortable with Node.js.

## Getting Started

### Prerequisites
- **CMake**: Version 3.14 or higher is recommended.
- **Development Environment**: Ensure you have a C++20 compatible development environment set up.

### Installation

1. **Clone the Repository**

   ```bash
   git clone https://github.com/ZunoFramework/zuno-starter.git
   cd zuno-starter
   ```

2. **Build the Project**

   - Create a build directory:

     ```bash
        mkdir build
     ```

   - Compile the project:

     ```bash
        cmake -S . -B build
        cmake --build build  
     ```

3. **Run the Application**

   After building, you can run the application:

   ```bash
   ./zuno-app
   ```

By default, the server will run on port `3456`.

## Project Structure

- **`src/`**: Contains the source code of your application.
  - `main.cpp`: The entry point of the application.
- **`build/`**: A directory where build artifacts are placed (created through CMake).
- **`CMakeLists.txt`**: Configuration for building the project.

## Basic Usage

Here is a simple example of creating a web server using Zuno Framework:

```cpp
#include <zuno.hpp>

int main()
{
    zuno::App app;

    // Define a route for GET requests
    app.get("/", [](const zuno::Request& req, zuno::Response& res) {
        res.send("Hello, World!");
    });

    // Start the server on port 3000
    app.listen(3000);

    return 0;
}
```

## Features

- **Express.js Like Syntax**: Easily define routes and middleware.
- **TLS Support**: Secure your web application with TLS/SSL.

## Contributing

We welcome contributions! Feel free to open issues and pull requests for any improvements or bug fixes.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Acknowledgments

- The Zuno Framework team for developing the framework.
- The community for providing valuable feedback and support.

## Support

If you have any questions or need help, please refer to the [Zuno Framework documentation](https://zunoframework.com/docs) or reach out on our community forums.