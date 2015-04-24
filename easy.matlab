
% set axis bounds
AX = axis;
AX(1:2) = [0 length(sel)+1];
if isfield(tc.params,'axisBounds') & ~isempty(tc.params.axisBounds)
    AX(3:4) = tc.params.axisBounds(3:4);
end
axis(AX);

cNames = tc_condInitials(tc.trials.condNames(sel));
set(gca, 'Box', 'off', 'XTick', 1:length(cNames), 'XTickLabel', cNames);
tuftify;
