A = [ 1 1 1
    1 2 2
    1 2 3]
B = [5
    6
    8]
matrixSize = length(A)
upper=zeros(size(A))
lower=zeros(size(A))
upper(:,1)=A(:,1 )
lower(1,:)=A(1,:)/lower(1,1)
lower(1,1)=1 % set identity matrix
for k = 2:matrixSize
    for j = 2:matrixSize
        for i = j:matrixSize
            upper(i,j)=A(k,j)-dot(upper(i,1:j-1),lower(1:j-1,j))          
        end
        lower(k,j)=(A(k,j)-dot(upper(k,1:k-1),lower(1:k-1,j)))/upper(k,k)     
    end    
end
lower
upper
%LY = B
Y = zeros(matrixSize,1)
Y(1)=B(1)
for row=2:matrixSize
    Y(row)=B(row)    
    for col = 1:row-1
        Y(row)=Y(row)-upper(row,col)*Y(col)        
    end  
    Y(row)=Y(row)/upper(row,row)    
end
Y
%UX = Y
x = zeros(matrixSize,1)
x(matrixSize)=Y(matrixSize)/lower(matrixSize,matrixSize)
for row = matrixSize-1:-1:1 %second to the last row
    temp = 0    
    for col = matrixSize:-1:1
        temp = temp+lower(row,col)*x(col)
    end
    xrow=(Y(row)-temp)/lower(row,row)
end
%% 
%