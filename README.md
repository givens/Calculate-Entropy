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

h(x) 
h(x,y)
h(x,y,z)
cond(x,y)
mi(x,y)
condmi(x,y,z)
```
