X = [1 1 1 1;2 2 2 2;3 3 3 3;4 4 4 4;5 5 5 5]

Data = [1 2104 5 1 45 460;
        1 1416 3 2 40 232;
        1 1534 3 2 30 315;
        1 852 2 1 36 178]
    
X = Data(:,1:5)
Y = Data(:,6)


a = [-1 1]

b= [1 0]

c = a*transpose(b)

m = [1;2;3;4;5;6]

n = [1;2;3;4;5;6]

o = [1 2 3 4 5 6]

nana = load('sem2a_q4_linsep_data.mat')
