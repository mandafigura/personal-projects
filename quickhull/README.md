# QuickHull 2D Algorithm

On this folder you have the usual quickhull algorithm implementation using C++. The required C++ version will be on the source code heading. REFERENCES ARE IN THE SOURCE CODE!!!

## How to manage input files and compilation

### Input Files

The input files must have the following config:
```
<double><space-character><double><endl>
```

Your input file **must** end wit _no blank lines!_ Otherwise it might crash while running.

### Compilation

How to compile and run it on C++ (LINUX BASH). Make sure your compiller has the required C++ version.
```shell
# g++ filename.cpp -o executablename
# ./executablename <inputfile.in >outputfile.out
```
## Describing the test cases

### Input Files
Take a look on the input and output test cases (they might help). Also: if you want to contibrute with more examples, create a pull request.

* [test_1.in](https://github.com/mandafigura/computer-graphics-beginner/blob/master/quickhull/test_1.in) has only non-collinear points on the convex hull
* [test_2.in](https://github.com/mandafigura/computer-graphics-beginner/blob/master/quickhull/test_2.in) was the first test using collinear points
* [test_3.in](https://github.com/mandafigura/computer-graphics-beginner/blob/master/quickhull/test_3.in) has a lot of collinear points and a constant line on the X-axis
	
### Output Files	
The output files describe the points needed (in order of alignment) to build the convex hull

> Not all the points that belong to the convex hull are described on the output files.Yet, if you make the line segments in order of each point appearance then all the points that belongs to the convex hull will be on the lines.


