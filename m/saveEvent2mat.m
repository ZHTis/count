strpath='C:\Users\ZHT\Documents\MATLAB\NystromHolmqvist2010-master\DataFolder\temp\'
strlist={'ponEye_4_s3c1','ponEye_4_s3c2','ponEye_4_s3c3',...
    'ponEye_4_s4c1','ponEye_4_s4c2','ponEye_4_s4c3'
    }
strlist2 ={'pon4_s3c1','pon4_s3c2','pon4_s3c3',...
    'pon4_s4c1','pon4_s4c2','pon4_s4c3'
    }
str2 = '.tsv'
str3 = '.mat'
parentpath = 'C:\Users\ZHT\Documents\MATLAB\NystromHolmqvist2010-master\DataFolder\'
delpath = strcat(parentpath,str2)
for i=1:6
   pathfile = strcat(strpath,strlist{i},str2)
   name = strcat(strlist2{i},str3)
   disp(name)
   movefile(pathfile,parentpath)
   eventClassificationPictureViewing

   saveEvent2mat(fullfile("DataFolder",name),data);
   delpath = strcat(parentpath,strlist{i},str2)
   delete(delpath)
end