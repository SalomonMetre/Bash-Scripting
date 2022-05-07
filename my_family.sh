#! /usr/bin/bash

familyArray=('David' 'Josephine' 'Salomon' 'Joseph' 'Benedicte' 'Marie-Reine' 'Pascaline' 'Michel-Vainqueur' 'Vincent' 'Judith')

echo ${familyArray[@]}
echo ${familyArray[2]}
echo ${#familyArray[@]}
echo ${!familyArray[@]}