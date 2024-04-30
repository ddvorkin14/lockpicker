# lockpicker
This is a simple Ruby script designed to find the least number of moves required to unlock a rotary lock.

# Usage
To test the script, simply run the following command:

```bash
ruby main.rb
```

# How it works
The script uses a method lm to calculate the movements required to reach each target combination. It then sums up these movements using another method tlm to find the total number of movements needed to unlock the lock.

# Example
You can run the script with custom test cases by providing arguments via the command line. For example:
```bash
ruby main.rb 3 "1,3,8" 8 7
```
This command will test the script with the current position ```3```, target combinations ```[1, 3, 8]```, a maximum position of ```8```, and an expected total of ```7 movements```.

Alternatively, you can run the script with sample test cases by omitting the arguments:
```bash
ruby main.rb
```
This will run the script with predefined sample test cases and display the results.
