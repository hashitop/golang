# Go

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

### Hello World

A boring basic sample for a start which located under `01-helloworld` directory

#### Build Hello World

Navigate to the clone project directory under `01-helloworld` where `main.go` is located and run:

> `go build main.go`

The command generates `main` file for go runtime to execute.

#### Run Hello World

At the location where `main` file is located, run command:

> `go run . main`

The `main` by itself is an executable file which is able to execute directly with the command below without `go`

> `./main`

#### Test Hello World

At the location where `main` file is located, run command:

> `bash test.sh`

#### What's inside main.go

Some interesting things you can learn from a **hello world** app

##### Package

Package is a collection related go files with the rule is the first line of each go file is required to have the package name where it belongs to.

There are two types of package

- Executable [package **main**]
- Reusable [other packages]

The name of packages can also be different from the actual directory name where they are located.

#### Import

The `import` is declared to get access to functions and libraries defined in the target package. The name of target import package is required to surround with double quotes.

#### Function [func]

Function declaration uses keyword **func** followed by name of the function with parenthesis for the list of arguments if needed. A pair of open and end curly braces is used to begin and end function definition.

A key takeaway note for this basic `hello world` app is the function `main` is required as entry point of the executable. The **main** package can have as many files as it needs but there will be only **ONE** file with **main** function declaration.

### Cards

Another sample project is about cards and it's located at `02-cards`

#### Variable declaration

GO is strict type language therefore variable declaration requires explicit data type, however, the language is flexible and smart enough to be able to figure out data type at compile time by using some hint.

##### Declaring variable with explicit type


```var var_name string = "a var"```

##### Declaring variable without explicity type

```var_name := "Data"```

By using `:=`, GO will try to figure out from the data on the right hand to determine the data type at compile time.
To reassign value to the variable, it is no longer required to use `:=`, only `=` is sufficient.

``` var_name = "Updated data"```

#### Function with Return value [func]

A function can return value by using keyword `return` following by the returning value.
Go requires explicit return type declaration by appending the data type next to parenthesis and before the begin curly braces.

```
func newCard() string {
	return "Five of Diamonds"
}
```

#### Slice and For Loop

Go uses square bracket to declare slice (array) with data type and the data inside curly braces.

```cards := []string{"Ace of Diamonds", newCard()}```

The `append` function can be used to add item into existing slice. The slice object returned by append function is new slice object with the appended item.

```cards = append(cards, "a card")```

Iteration though each item of slice can be done with `for` loop

```
for i, card := range cards {
	fmt.Println(i, card)
}
```