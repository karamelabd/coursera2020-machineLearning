function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

% my implementation
admission_positiveIdx = y==1;
admission_negativeIdx = y==0;
score_exam1 = X(:,1); %exam 1 scores
score_exam2 = X(:,2); %exam 2 scores
admission_positive_exam1 = score_exam1(admission_positiveIdx);
admission_positive_exam2 = score_exam2(admission_positiveIdx);
admission_negative_exam1 = score_exam1(admission_negativeIdx);
admission_negative_exam2 = score_exam2(admission_negativeIdx);
plot_admission_positive = plot(admission_positive_exam1, admission_positive_exam2,'k+'); hold on
plot_admission_negative = plot(admission_negative_exam1, admission_negative_exam2,'yo');
plot_admission_positive.Color = 'black';
plot_admission_positive.MarkerSize = 7;
plot_admission_negative.MarkerEdgeColor = 'black';
plot_admission_negative.MarkerFaceColor = 'yellow';
plot_admission_negative.MarkerSize = 7;

% these have been commented out because the main code specifies these
% values
% legend('Admitted','Not admitted');
% xlabel('Exam 1 score')
% ylabel('Exam 2 score')

% Coursera implementation
% Find Indices of Positive and Negative Examples
pos = find(y==1); neg = find(y == 0);
% Plot Examples
plot(X(pos, 1), X(pos, 2), 'k+','LineWidth', 2, 'MarkerSize', 7);
plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y','MarkerSize', 7);









% =========================================================================



hold off;

end
