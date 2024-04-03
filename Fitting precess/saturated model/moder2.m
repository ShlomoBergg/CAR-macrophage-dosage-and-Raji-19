%define the sum-of-squares error (SSE) 
function error_in_data1 = moder2(lysing_para_true,replic_para_true,tumor_cell24,tumor_cell48,Target_cell, Effector_cell)

replic_para=replic_para_true;
lysing_para=lysing_para_true;

ini_1=[Target_cell(1,1);Effector_cell(1)];
ini_2=[Target_cell(1,1);Effector_cell(2)];
ini_3=[Target_cell(1,1);Effector_cell(3)];

        [~, tumor_esti_1] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 1],ini_1);
        [~, tumor_esti_2] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 1],ini_2);
        [~, tumor_esti_3] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 1],ini_3);

        [~, tumor_esti_4] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 2],ini_1);
        [~, tumor_esti_5] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 2],ini_2);
        [~, tumor_esti_6] = ode45(@(t,y)(model_1(t,y,replic_para,lysing_para)),[0 2],ini_3);



        estimated_result24=[tumor_esti_1(end,1), tumor_esti_2(end,1),tumor_esti_3(end,1)];
        estimated_result48=[tumor_esti_4(end,1),tumor_esti_5(end,1),tumor_esti_6(end,1)];

        error_in_data1 = sum((log10(estimated_result24) - log10(tumor_cell24)).^2)+sum((log10(estimated_result48) - log10(tumor_cell48)).^2)


    end