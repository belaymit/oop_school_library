<a name="readme-top"></a>

<div align="center">
  <img src="/images/ruby.jpeg" alt="logo" width="340"  height="auto" />
  <br/>

  <h3><b>Ruby OOP</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ (OPTIONAL)](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖  oop_school_library <a name="about-project"></a>


**oop_school_library** is an educational project that I am going to build interactive console apps. The app will have a method that does the following

-  List all books.
-  List all people.
- Create a person (teacher or student, not a plain Person).
- Create a book.
- Create a rental.
- List all rentals for a given person id.


## Learning Objectives
> - Implement classes and objects in Ruby.
> - Implement encapsulation and inheritance with Ruby.
> - Run a program using the command line.
> - Build interactive console apps.
> - Run a program using the command line.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>


<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
  </ul>
</details>


### Key Features <a name="key-features"></a>

- **Classes**


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

### Prerequisites

In order to run this project you need:

#### Select your platform
 - MacOS
 - Ubuntu
 - Windows

### Tools on Unix based systems

There are several tools that can be used to install Ruby on your local machine. The most popular are:
```sh
   rbenv
   RVM
   asdf
```
We will go with rbenv because it does not override any of the system shell scripts like RVM and it allows us to compile older Ruby versions that will fail with RVM.

## MacOS

Run the following commands in your terminal:
```sh
brew install rbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile
rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
> Note: If you are using a shell other than bash, for example zsh, you should change the first line to use zshrc like this:
```sh
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
```
> or any other config file of your shell.

## Ubuntu

> You can install Ruby on Ubuntu in several ways. The easiest way is to run the following command (source):
```sh
  sudo apt-get install ruby-full
```
If that doesn't work, you can try installing Ruby using [rbenv](https://github.com/rbenv/rbenv). This is a version manager tool for the Ruby programming language on Unix-like systems.

Run the following commands in your terminal:

```sh
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
exec $SHELL

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
exec $SHELL

rbenv install 3.0.1
rbenv global 3.0.1
ruby -v
```
consider checking [ Install ruby on Ubuntu 20.04 with rbenv.](https://linuxtut.com/install-ruby-on-ubuntu-20.04-with-rbenv-e419f/)

## Windows
Installing Ruby on Windows is a little more difficult than installing it on another OS. We would recommend using [WSL](https://learn.microsoft.com/en-us/windows/wsl/about), but you can also try to install Ruby directly on your OS with [rubyinstaller](https://rubyinstaller.org/).

```sh
WSL only works on 64-bit installations of Windows.
```

If you are using a 64-bit version of Windows 10, we recommend following [this](https://gorails.com/setup/windows/10) article to install Ruby.

If you can not use WSL then you should follow these steps:

> Download the last version of [RubyInstaller](https://rubyinstaller.org/downloads/).
> Run RubyInstaller and follow the steps described [here](https://stackify.com/install-ruby-on-windows-everything-you-need-to-get-going/).

### Setup

Clone this repository to your desired folder:


```sh
  cd my-folder
  git clone git@github.com:belaymit/oop_school_library.git
```
### Install

Install this project with:


```sh
  cd oop_school_library
  gem install
```

### Usage

To run the project, execute the following command:

```sh
  ruby file-name.rb
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

👤 **Belay Birhanu G**

- GitHub: [@githubhandle](https://github.com/belaymit)
- Twitter: [@twitterhandle](https://twitter.com/2belamit)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/belay-birhanu-144ba714b/)

👤 **Juan Carlos Sanchez**

- GitHub: [@Juank628](https://github.com/Juank628)
- Twitter: [@juancadev81](https://twitter.com/juancadev81)
- LinkedIn: [LinkedIn](https://linkedin.com/in/juan-carlos-sanchez-zunino)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Decorators**
- [ ] **Modules**
- [ ] **Test Cases**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/belaymit/oop_school_library/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>


If you like this project please give it a star

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse community

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ (OPTIONAL) <a name="faq"></a>

- **Explain About Class Variable And Global Variable?**

  - A class variable starts with an @@ sign which is immediately followed by upper or lower case letter. You can also put some name characters after the letters which stand to be a pure optional. A class variable can be shared among all the objects of a class. A single copy of a class variable exists for each and every given class.

To write a global variable you start the variable with a ``$``sign which should be followed by a name character. Ruby defines a number of global variables which also include other punctuation characters such as ``$_`` and ``$-k``.


- **Mention What Is The Difference Between A Gem And A Plugin In Ruby?**

  - **_Gem_**: A gem is a just ruby code. It is installed on a machine, and it’s available for all ruby applications running on that machine.
  - **_Plugin_**: Plugin is also ruby code, but it is installed in the application folder and only available for that specific application.

- **Explain the role of modules and mixins in Ruby**

  - Modules are Ruby’s way of ``grouping methods``, ``classes``, and constants together to provide a namespace for preventing name clashes. The second purpose of modules is to use them as ``mixins``. Technically, Ruby only supports single inheritance, but by using modules as mixins, it is possible to share code among different classes—a key advantage of multiple inheritance—without having to give up the simplicity of the single inheritance paradigm.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
