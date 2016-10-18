function getxcell(data,plats,sensors,events,name)

matr = cell(length(plats),size(data,2)+1);
matr{1,1} = 'Position';
for ii = 1:length(sensors)
    matr{1,ii+1} = sensors{ii};
end
for ii = 1:length(events)
    matr{ii+1,1} = events{ii};
end
for ii = 1:length(plats)
    event = data(plats(ii),:);
    for jj = 1:length(event)
        matr{ii+1,jj+1} = event(jj);
    end
end
name = [name '.xlsx'];
xlswrite(name,matr)