# Calculate-Entropy

Calculate Entropy in R

## Functions

* `condh` - Calculates conditional entropy from feature vectors

* `condition` - Produces a conditional probability from a joint one

* `condmi` - Calculates conditional mutual information from data vectors

* `discretize` - Discretize by equal width or equal frequency

* `entropy` - Calculates joint entropy from a joint probability table

* `h` - Calculates joint entropy from feature vectors

* `marginalize` - Calculates marginal probability from a joint probability

* `mi` - Calculates mutual information from feature vectors

* `prob` - Calculates joint probability

## Example

```R
x = c(1,0,1,0,1,0,1,0)
y = c(1,1,0,0,1,1,0,0)
z = c(1,1,1,1,0,0,0,0)

h(x) # H(x) = 1
h(x,y) # H(x,y) = 2
h(x,y,z) # H(x,y,z) = 3
condh(x,y) # H(x|y) = 1
mi(x,y) # I(x;y) = 0
condmi(x,y,z) # I(x;y|z) = 0
```
