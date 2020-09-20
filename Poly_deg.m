load iris
type='c'; 
gam = 1; 
disp('Linear kernel'),

[alpha,b] = trainlssvm({Xtrain,Ytrain,type,gam,[],'lin_kernel'});

figure; plotlssvm({Xtrain,Ytrain,type,gam,[],'lin_kernel','preprocess'},{alpha,b});

[Yht, Zt] = simlssvm({Xtrain,Ytrain,type,gam,[],'lin_kernel'}, {alpha,b}, Xtest);

err = sum(Yht~=Ytest); 
fprintf('\n on test: #misclass = %d, error rate = %.2f%%\n', err, err/length(Ytest)*100)