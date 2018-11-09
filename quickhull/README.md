-The input files must have the following config (ignore the "_"):
  _double_space-character_double_endl_

-How to compile and run it on C++ (LINUX BASH):
	(make sure your compiller has the required C++ version)
	# g++ filename.cpp -o executablename
	# ./executablename <inputfile.in >outputfile.out

-The required C++ version will be on the source code heading

-Take a look on the input and output test cases (they might help)
-Also: if you want to contibrute with more examples, create a pull request
	- test1.in has only non-collinear points on the convex hull
	- test2.in was the first test using collinear points
	- test3.in has a lot of collinear points and a constant line on the X-axis
	
-The output files describe the points needed (in order of alignment) to build the convex hull
	IMPORTANT:	not all the points that belong to the convex hull are described on the output files
			yet, if you make the line segments in order of each point appearance all the points
			that begings to the convex hull will be on the lines.

-REFERENCES ARE IN THE SOURCE CODE
