function dataID(datafile,truck,lane,rep,slots)


if ~isempty(strfind(datafile,'Windham'))
    bridnum = '5298';
elseif ~isempty(strfind(datafile,'Buckfield'));
    bridnum = '5452';
elseif ~isempty(strfind(datafile,'Waltham'))
    bridnum = '3238';
elseif ~isempty(strfind(datafile,'Steuben'))
    bridnum = '3067';
elseif ~isempty(strfind(datafile,'Pembroke'))
    bridnum = '3884';
else
    error('Please put the bridge name in the filepath.')
end

savename = ['Br' bridnum '_' truck 'Tks_' lane 'Lns_' rep];
fid = fopen(datafile);


stopper = 'not yet';
ii = 1;
while ischar(stopper)
    stopper = fgetl(fid);
    if ischar(stopper)
        datfile{ii,1} = stopper;
    end
    ii = ii+1;
end
stillgood = 1;
ii = 22;
data = [];
try
while stillgood == 1
    
    c = textscan(datfile{ii,1},'%f','Delimiter',',');
    if ~isempty(c{1,1})
        data = [data,c{1}];
    else
        stillgood = 0;
    end
    ii = ii+1;
  

end
catch
end
data = data';
data(data==-9999) = 0;
zeroer = data(1,:);
ender = data(end,:);
for ii = 1:size(data,1)
        data(ii,:) = data(ii,:)-zeroer-(ender-zeroer)*(ii-1)...
            /((size(data,1)-1));
end

S.(savename) = data;
save(sprintf('%s',savename),'-struct','S');

% plat = cell(length(slots),2);
% plat(:,1) = slots;
% plat = platfinder(plat,data);