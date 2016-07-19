clear all

x0 = 0.1;
r = .2; % try r = 2?
K = 1;
num_iterations = 99;


%% First model

sol_vec_first_model = zeros(1,num_iterations + 1);

sol_vec_first_model(1) = x0;

for i = 1:num_iterations
   
sol_vec_first_model(i + 1) = sol_vec_first_model(i) + r*sol_vec_first_model(i)*(1 - sol_vec_first_model(i)/K ); 

end

time_vec = 1:(num_iterations + 1);


%% Second model

sol_vec_second_model = zeros(1,num_iterations + 1);

sol_vec_second_model(1) = x0;

for i = 1:num_iterations
   
sol_vec_second_model(i + 1) = ((1 + r)*sol_vec_second_model(i))/(1 + r*sol_vec_second_model(i)/K ); 

end

time_vec = 1:(num_iterations + 1);




%% Plot solutions
plot(time_vec, sol_vec_first_model, 'r'), hold on

plot(time_vec, sol_vec_second_model, 'b')

