%k���ں���im�����ݼ���k�ǽ�����,����һ��n*k+1�ľ���ÿһ��ǰk���ǽ��ڵı�ţ�k+1���ǵ�k���ľ���
function Z = fkNN(im,k)
[m,n] = size(im);
save=[];
result=zeros(n,k);
for i=1:n
    for j=1:n
        save(j)=norm(im(:,i)-im(:,j));
    end
    for l=1:k
        [y,num]=min(save);
        result(i,l)=num;
        result(i,l+1)=y;
        save(num)=10000;
    end
end
Z=result;
        