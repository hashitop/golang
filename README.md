# Hello World

This project is a minimal sample for Go Hello World application.

### Download Installer

Go language requires compiler that compiles source files and runtime that executes compiled binary files. The executable for compiler and runtime is OS dependent so please download the installer of your choice.

* [Windows](https://dl.google.com/go/go1.12.5.windows-amd64.msi)
* [MacOS](https://dl.google.com/go/go1.12.5.darwin-amd64.pkg)
* [Linux](https://dl.google.com/go/go1.12.5.linux-amd64.tar.gz)

After download, please follow the [install instruction](https://golang.org/doc/install) for your operating system.

### Ensure Go executable in your PATH

The install instruction provides steps to incorporate Go runtime in system/user PATH to be accessible anywhere.
Please make sure that the steps have been correctly performed by open up a terminal and run:

`go version`

If the version detail does not display, please ensure the go executable has been set up in your PATH according to [install instruction](https://golang.org/doc/install) 

### Build Hello World

Navigate to the clone project directory where `main.go` is located and run:

`go build main.go`

The command generates `main` file for go runtime to execute.

### Run Hello World

At the location where `main` file is located, run command:

`go run . main`



