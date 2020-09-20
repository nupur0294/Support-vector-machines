%Simple classification using an artifical data with two classess
%of Gaussians witht he same covariance matrices. 
X1 = 1 + randn(50, 2);
X2 = -1 + randn(51, 2);
gam = 10;
type='c'; 
%class labels
Y1 = ones(50,1);
Y2 = -ones(51,1);

%Merging the 'dataset'
X =[X1;X2];
Y= [Y1;Y2];
t = 1;


%Visualization
figure;
hold on;
plot(X1(:,1),X1(:,2),'ro');
plot(X2(:,1),X2(:,2),'bo');
hold off;
figure;
hold on;
histogram(X1)
histogram(X2)