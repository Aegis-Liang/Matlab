zeros(5,6)

ones(4,2)

5*ones(4,2)

zeros(4)

ones(1,5)

diag([7 3 9 1])

rand

rand(3,4)

rand(5)

1 + rand(5,4) * 10

fix(1 + rand(5,4) * 10)

randi(10, 5, 4)

randi(20, 5)

randi([5 10], 2, 3)

randn(5)

r = randn(1, 1000000)
hist(r, 100)


rand(1, 3)
rng(0);
rand(1, 3)

rng(1)
[rand, randn, randi(10)]
rng(1)
[rand, randn, randi(10)]

rng('shuffle');[rand, randn, randi(10)]
rng('shuffle');[rand, randn, randi(10)]