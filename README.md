# r-aws-spike
Spike of AWS S3 load with R


Install R with Homebrew:
````
$ brew tap homebrew/science
$ brew install R
````

Install the required packages by running the install_packages script 
````
$ ./install_packages
````
Export your AWS credentials into the shell
````
export AWS_DEFAULT_REGION=ap-southeast-2
export AWS_SECRET_ACCESS_KEY=
export AWS_ACCESS_KEY_ID=
````
Start an interactive R session
````
$ r
Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.
>
````

Source the entry point:
````
> source('main.r')
  trial1 mass1 velocity1
1      A  11.0        12
2      A  12.0        14
3      B   6.0         8
4      B   7.0        10
5      A  11.5        13
6      B   8.0        11
````
