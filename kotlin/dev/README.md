Image can be used to build Kotlin source code. 

To execute resulting JVM bytecode please use ```fnproject/java:1.8```

## Usage

### Check the kotlin image is working

```sh
docker run -it --rm fnproject/kotlin:dev kotlin -version
```

### Example kotlin compile (java runtime):

Create ```hello.kt``` file with the following:
```
fun main(args: Array<String>) {
    if (args.size == 0) return
    print("Hello ${args[0]}")
}
```

Compile kotlin script with java runtime support:
```sh
docker run -it --rm -v "$PWD":/build -w /build fnproject/kotlin:dev kotlinc hello.kt -include-runtime -d hello.jar
```

Test the compiled jar:
```sh
docker run -it --rm -v "$PWD":/app -w /app fnproject/java:1.8 java -jar hello.jar World
```

## Building this image

```sh
docker build -t fnproject/kotlin:dev .
```

Tag the version, check it with `docker run --rm fnproject/kotlin:dev kotlin -version`:

```sh
docker tag -f fnproject/kotlin:dev fnproject/kotlin:X-dev
docker tag -f fnproject/kotlin:dev fnproject/kotlin:X.Y-dev
docker tag -f fnproject/kotlin:dev fnproject/kotlin:X.Y.Z-dev
```

Push:

```sh
docker push fnproject/kotlin
```

## Updating Kotlin version:

Go to https://github.com/JetBrains/kotlin/releases/ for the latest releases. The Dockerfile can be updated to point at tagged releases.
