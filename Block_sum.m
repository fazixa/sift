%The function of sliding window pixel sum calculation
% Author: Dmitry Samal
% 18.03.2014

function [sum] = Block_sum(block_struct)
%global Lo_D Hi_D; % Lo_R Hi_R;

Lo_D = [0.707106781186548 0.707106781186548];
Hi_D = [-0.707106781186548 0.707106781186548];

[c,s]=wavedec2(block_struct.data,2,Lo_D,Hi_D);

ac = abs(c);

sum = ac(1)*ac(2)*ac(3)+ ac(4)*ac(5)*ac(6)*ac(7)*ac(8)*ac(9);

% N = block_struct.blockSize(1);
% M = block_struct.blockSize(2);
% ul = block_struct.data(1,1);
% ur = block_struct.data(1,M);
% dl = block_struct.data(N,1);
% dr = block_struct.data(N,M);

%sum = dr + ul - ur - dl;

% % % % % The fastest version of the processing
% % % % sum = block_struct.data(block_struct.blockSize(1),block_struct.blockSize(2))*block_struct.data(1,1)+...
% % % %       block_struct.data(1,block_struct.blockSize(2))*block_struct.data(block_struct.blockSize(1),1)+...
% % % %       block_struct.data(1,2)*block_struct.data(block_struct.blockSize(1),2)+...
% % % %       block_struct.data(2,1)*block_struct.data(2,block_struct.blockSize(2))+...
% % % %       block_struct.data(2,2)*block_struct.data(1,1)+...
% % % %       block_struct.data(2,2)*block_struct.data(1,2)+...
% % % %       block_struct.data(2,2)*block_struct.data(1,block_struct.blockSize(2))+...
% % % %       block_struct.data(2,2)*block_struct.data(2,block_struct.blockSize(2))+...
% % % %       block_struct.data(2,2)*block_struct.data(block_struct.blockSize(1),block_struct.blockSize(2))+...
% % % %       block_struct.data(2,2)*block_struct.data(block_struct.blockSize(1),2)+...
% % % %       block_struct.data(2,2)*block_struct.data(block_struct.blockSize(1),1) ;
  
  %debug
%   if (block_struct.location(1) > 2440)
%       i = 0;
%   end
  
end