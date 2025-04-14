figure;subplot(1,3,1);imagesc(corrMatrix);
xticks(1:1:4)
xticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
yticks(1:1:4)
yticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
title('Attend Aud');
colorbar
ax = colorbar;
ylabel(ax,'R','FontSize',14,'Rotation',270)




subplot(1,3,2);

imagesc(corrMatrix2);title('Attend Vis');
xticks(1:1:4)
xticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
yticks(1:1:4)
yticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
colorbar
ax = colorbar;
ylabel(ax,'R','FontSize',14,'Rotation',270)

subplot(1,3,3);imagesc(corrMatrix2-corrMatrix);title('Difference')
xticks(1:1:4)
xticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
yticks(1:1:4)
yticklabels({'MGD U1','MGD U2','MGV U1','MGV U2'})
colorbar
ax = colorbar;
ylabel(ax,'R','FontSize',14,'Rotation',270)