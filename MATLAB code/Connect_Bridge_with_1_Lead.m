clc;clear;

% Left Lead xyz
    fid=fopen('Gold_Lead_LHS.xyz','r');  
    numL=textscan(fid,'%4d');
    numL=numL{1};
    dataL=textscan(fid,'%s %20.10f %20.10f %20.10f');
    fclose(fid);
    elementsL=dataL{1};  % data{1} still a cell
    coordinatesL=cell2mat(dataL(2:4));

% mol xyz
    fid=fopen('1 - one H removed.xyz','r');    
    num=textscan(fid,'%4d');
    num=num{1};
    data=textscan(fid,'%s %20.10f %20.10f %20.10f');
    fclose(fid);
    elements=data{1};  % data{1} still a cell
    coordinates=cell2mat(data(2:4));
    
%  %Right Lead xyz
%     fid=fopen('Gold_Lead_RHS.xyz','r');    
%     numR=textscan(fid,'%4d');
%     numR=numR{1};
%     dataR=textscan(fid,'%s %20.10f %20.10f %20.10f');
%     fclose(fid)
%     elementsR=dataR{1};  % data{1} still a cell
%     coordinatesR=cell2mat(dataR(2:4));

    
    atL=input('Atom numer of gold lead LHS = ');
    atM=input('Atom numer of leftmost molecule = ');
    vector1=input('Please input the vector you want to shift [x y z] = ');
    shiftvector1=coordinatesL(atL,:)-coordinates(atM,:)+vector1;
     new_coordi1=coordinates+repmat(shiftvector1,num,1);
%     atR=input('atom numer in RLead=');
%     atMr=input('atom numer in Mol_R=');
%     vector2=input('please input the vector you want to shift [a b c]=');
%     shiftvector2=-coordinatesR(atR,:)+new_coordi1(atMr,:)+vector2;
%     new_coordi2=coordinatesR+repmat(shiftvector2,numR,1);


%output the first two lines of the .xyz file    
    fid1=fopen('1LL.xyz','w');
    fprintf(fid1,'%4d\n',num+numL);
%       fprintf(fid1,'%4d\n',num+numL+numR);
    fprintf(fid1,'\n');
    format='%4s %20.10f%20.10f%20.10f\n';
% output the new coordinates
   for l=1:numL
       fprintf(fid1,format,elementsL{l},coordinatesL(l,1),coordinatesL(l,2),coordinatesL(l,3));
   end
   for l=1:num
       fprintf(fid1,format,elements{l},new_coordi1(l,1),new_coordi1(l,2),new_coordi1(l,3));
   end
%    for l=1:numR
%        fprintf(fid1,format,elementsR{l},new_coordi2(l,1),new_coordi2(l,2),new_coordi2(l,3));
%    end
    fclose(fid1)