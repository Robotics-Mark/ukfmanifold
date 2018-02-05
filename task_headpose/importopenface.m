function headPose = importfile(filename, startRow, endRow)
%IMPORTFILE Import numeric data from a text file as a matrix.
%   HEADPOSE = IMPORTFILE(FILENAME) Reads data from text file FILENAME for
%   the default selection.
%
%   HEADPOSE = IMPORTFILE(FILENAME, STARTROW, ENDROW) Reads data from rows
%   STARTROW through ENDROW of text file FILENAME.
%
% Example:
%   headPose = importfile('headPose.txt', 2, 1788);
%
%    See also TEXTSCAN.

% Auto-generated by MATLAB on 2017/07/25 14:14:34

%% Initialize variables.
delimiter = ',';
if nargin<=2
    startRow = 2;
    endRow = inf;
end

%% Format for each line of text:
%   column1: double (%f)
%	column2: double (%f)
%   column3: double (%f)
%	column4: double (%f)
%   column5: double (%f)
%	column6: double (%f)
%   column7: double (%f)
%	column8: double (%f)
%   column9: double (%f)
%	column10: double (%f)
%   column11: double (%f)
%	column12: double (%f)
%   column13: double (%f)
%	column14: text (%s)
%   column15: double (%f)
%	column16: double (%f)
%   column17: double (%f)
%	column18: double (%f)
%   column19: double (%f)
%	column20: double (%f)
%   column21: double (%f)
%	column22: double (%f)
%   column23: double (%f)
%	column24: double (%f)
%   column25: double (%f)
%	column26: double (%f)
%   column27: double (%f)
%	column28: double (%f)
%   column29: double (%f)
%	column30: double (%f)
%   column31: double (%f)
%	column32: double (%f)
%   column33: double (%f)
%	column34: double (%f)
%   column35: double (%f)
%	column36: double (%f)
%   column37: double (%f)
%	column38: double (%f)
%   column39: double (%f)
%	column40: double (%f)
%   column41: double (%f)
%	column42: double (%f)
%   column43: double (%f)
%	column44: double (%f)
%   column45: double (%f)
%	column46: double (%f)
%   column47: double (%f)
%	column48: double (%f)
%   column49: double (%f)
%	column50: double (%f)
%   column51: double (%f)
%	column52: double (%f)
%   column53: double (%f)
%	column54: double (%f)
%   column55: double (%f)
%	column56: double (%f)
%   column57: double (%f)
%	column58: double (%f)
%   column59: double (%f)
%	column60: double (%f)
%   column61: double (%f)
%	column62: double (%f)
%   column63: double (%f)
%	column64: double (%f)
%   column65: double (%f)
%	column66: double (%f)
%   column67: double (%f)
%	column68: double (%f)
%   column69: double (%f)
%	column70: double (%f)
%   column71: double (%f)
%	column72: double (%f)
%   column73: double (%f)
%	column74: double (%f)
%   column75: double (%f)
%	column76: double (%f)
%   column77: double (%f)
%	column78: double (%f)
%   column79: double (%f)
%	column80: double (%f)
%   column81: double (%f)
%	column82: double (%f)
%   column83: double (%f)
%	column84: double (%f)
%   column85: double (%f)
%	column86: double (%f)
%   column87: double (%f)
%	column88: double (%f)
%   column89: double (%f)
%	column90: double (%f)
%   column91: double (%f)
%	column92: double (%f)
%   column93: double (%f)
%	column94: double (%f)
%   column95: double (%f)
%	column96: double (%f)
%   column97: double (%f)
%	column98: double (%f)
%   column99: double (%f)
%	column100: double (%f)
%   column101: double (%f)
%	column102: double (%f)
%   column103: double (%f)
%	column104: double (%f)
%   column105: double (%f)
%	column106: double (%f)
%   column107: double (%f)
%	column108: double (%f)
%   column109: double (%f)
%	column110: double (%f)
%   column111: double (%f)
%	column112: double (%f)
%   column113: double (%f)
%	column114: double (%f)
%   column115: double (%f)
%	column116: double (%f)
%   column117: double (%f)
%	column118: double (%f)
%   column119: double (%f)
%	column120: double (%f)
%   column121: double (%f)
%	column122: double (%f)
%   column123: double (%f)
%	column124: double (%f)
%   column125: double (%f)
%	column126: double (%f)
%   column127: double (%f)
%	column128: double (%f)
%   column129: double (%f)
%	column130: double (%f)
%   column131: double (%f)
%	column132: double (%f)
%   column133: double (%f)
%	column134: double (%f)
%   column135: double (%f)
%	column136: double (%f)
%   column137: double (%f)
%	column138: double (%f)
%   column139: double (%f)
%	column140: double (%f)
%   column141: double (%f)
%	column142: double (%f)
%   column143: double (%f)
%	column144: double (%f)
%   column145: double (%f)
%	column146: double (%f)
%   column147: double (%f)
%	column148: double (%f)
%   column149: double (%f)
%	column150: double (%f)
%   column151: double (%f)
%	column152: double (%f)
%   column153: double (%f)
%	column154: double (%f)
%   column155: double (%f)
%	column156: double (%f)
%   column157: double (%f)
%	column158: double (%f)
%   column159: double (%f)
%	column160: double (%f)
%   column161: double (%f)
%	column162: double (%f)
%   column163: double (%f)
%	column164: double (%f)
%   column165: double (%f)
%	column166: double (%f)
%   column167: double (%f)
%	column168: double (%f)
%   column169: double (%f)
%	column170: double (%f)
%   column171: double (%f)
%	column172: double (%f)
%   column173: double (%f)
%	column174: double (%f)
%   column175: double (%f)
%	column176: double (%f)
%   column177: double (%f)
%	column178: double (%f)
%   column179: double (%f)
%	column180: double (%f)
%   column181: double (%f)
%	column182: double (%f)
%   column183: double (%f)
%	column184: double (%f)
%   column185: double (%f)
%	column186: double (%f)
%   column187: double (%f)
%	column188: double (%f)
%   column189: double (%f)
%	column190: double (%f)
%   column191: double (%f)
%	column192: double (%f)
%   column193: double (%f)
%	column194: double (%f)
%   column195: double (%f)
%	column196: double (%f)
%   column197: double (%f)
%	column198: double (%f)
%   column199: double (%f)
%	column200: double (%f)
%   column201: double (%f)
%	column202: double (%f)
%   column203: double (%f)
%	column204: double (%f)
%   column205: double (%f)
%	column206: double (%f)
%   column207: double (%f)
%	column208: double (%f)
%   column209: double (%f)
%	column210: double (%f)
%   column211: double (%f)
%	column212: double (%f)
%   column213: double (%f)
%	column214: double (%f)
%   column215: double (%f)
%	column216: double (%f)
%   column217: double (%f)
%	column218: double (%f)
%   column219: double (%f)
%	column220: double (%f)
%   column221: double (%f)
%	column222: double (%f)
%   column223: double (%f)
%	column224: double (%f)
%   column225: double (%f)
%	column226: double (%f)
%   column227: double (%f)
%	column228: double (%f)
%   column229: double (%f)
%	column230: double (%f)
%   column231: double (%f)
%	column232: double (%f)
%   column233: double (%f)
%	column234: double (%f)
%   column235: double (%f)
%	column236: double (%f)
%   column237: double (%f)
%	column238: double (%f)
%   column239: double (%f)
%	column240: double (%f)
%   column241: double (%f)
%	column242: double (%f)
%   column243: double (%f)
%	column244: double (%f)
%   column245: double (%f)
%	column246: double (%f)
%   column247: double (%f)
%	column248: double (%f)
%   column249: double (%f)
%	column250: double (%f)
%   column251: double (%f)
%	column252: double (%f)
%   column253: double (%f)
%	column254: double (%f)
%   column255: double (%f)
%	column256: double (%f)
%   column257: double (%f)
%	column258: double (%f)
%   column259: double (%f)
%	column260: double (%f)
%   column261: double (%f)
%	column262: double (%f)
%   column263: double (%f)
%	column264: double (%f)
%   column265: double (%f)
%	column266: double (%f)
%   column267: double (%f)
%	column268: double (%f)
%   column269: double (%f)
%	column270: double (%f)
%   column271: double (%f)
%	column272: double (%f)
%   column273: double (%f)
%	column274: double (%f)
%   column275: double (%f)
%	column276: double (%f)
%   column277: double (%f)
%	column278: double (%f)
%   column279: double (%f)
%	column280: double (%f)
%   column281: double (%f)
%	column282: double (%f)
%   column283: double (%f)
%	column284: double (%f)
%   column285: double (%f)
%	column286: double (%f)
%   column287: double (%f)
%	column288: double (%f)
%   column289: double (%f)
%	column290: double (%f)
%   column291: double (%f)
%	column292: double (%f)
%   column293: double (%f)
%	column294: double (%f)
%   column295: double (%f)
%	column296: double (%f)
%   column297: double (%f)
%	column298: double (%f)
%   column299: double (%f)
%	column300: double (%f)
%   column301: double (%f)
%	column302: double (%f)
%   column303: double (%f)
%	column304: double (%f)
%   column305: double (%f)
%	column306: double (%f)
%   column307: double (%f)
%	column308: double (%f)
%   column309: double (%f)
%	column310: double (%f)
%   column311: double (%f)
%	column312: double (%f)
%   column313: double (%f)
%	column314: double (%f)
%   column315: double (%f)
%	column316: double (%f)
%   column317: double (%f)
%	column318: double (%f)
%   column319: double (%f)
%	column320: double (%f)
%   column321: double (%f)
%	column322: double (%f)
%   column323: double (%f)
%	column324: double (%f)
%   column325: double (%f)
%	column326: double (%f)
%   column327: double (%f)
%	column328: double (%f)
%   column329: double (%f)
%	column330: double (%f)
%   column331: double (%f)
%	column332: double (%f)
%   column333: double (%f)
%	column334: double (%f)
%   column335: double (%f)
%	column336: double (%f)
%   column337: double (%f)
%	column338: double (%f)
%   column339: double (%f)
%	column340: double (%f)
%   column341: double (%f)
%	column342: double (%f)
%   column343: double (%f)
%	column344: double (%f)
%   column345: double (%f)
%	column346: double (%f)
%   column347: double (%f)
%	column348: double (%f)
%   column349: double (%f)
%	column350: double (%f)
%   column351: double (%f)
%	column352: double (%f)
%   column353: double (%f)
%	column354: double (%f)
%   column355: double (%f)
%	column356: double (%f)
%   column357: double (%f)
%	column358: double (%f)
%   column359: double (%f)
%	column360: double (%f)
%   column361: double (%f)
%	column362: double (%f)
%   column363: double (%f)
%	column364: double (%f)
%   column365: double (%f)
%	column366: double (%f)
%   column367: double (%f)
%	column368: double (%f)
%   column369: double (%f)
%	column370: double (%f)
%   column371: double (%f)
%	column372: double (%f)
%   column373: double (%f)
%	column374: double (%f)
%   column375: double (%f)
%	column376: double (%f)
%   column377: double (%f)
%	column378: double (%f)
%   column379: double (%f)
%	column380: double (%f)
%   column381: double (%f)
%	column382: double (%f)
%   column383: double (%f)
%	column384: double (%f)
%   column385: double (%f)
%	column386: double (%f)
%   column387: double (%f)
%	column388: double (%f)
%   column389: double (%f)
%	column390: double (%f)
%   column391: double (%f)
%	column392: double (%f)
%   column393: double (%f)
%	column394: double (%f)
%   column395: double (%f)
%	column396: double (%f)
%   column397: double (%f)
%	column398: double (%f)
%   column399: double (%f)
%	column400: double (%f)
%   column401: double (%f)
%	column402: double (%f)
%   column403: double (%f)
%	column404: double (%f)
%   column405: double (%f)
%	column406: double (%f)
%   column407: double (%f)
%	column408: double (%f)
%   column409: double (%f)
%	column410: double (%f)
%   column411: double (%f)
%	column412: double (%f)
%   column413: double (%f)
%	column414: double (%f)
%   column415: double (%f)
%	column416: double (%f)
%   column417: double (%f)
%	column418: double (%f)
%   column419: double (%f)
%	column420: double (%f)
%   column421: double (%f)
%	column422: double (%f)
%   column423: double (%f)
%	column424: double (%f)
%   column425: double (%f)
%	column426: double (%f)
%   column427: double (%f)
%	column428: double (%f)
%   column429: double (%f)
%	column430: double (%f)
%   column431: double (%f)
% For more information, see the TEXTSCAN documentation.
formatSpec = '%f%f%f%f%f%f%f%f%f%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f%[^\n\r]';

%% Open the text file.
fileID = fopen(filename,'r');

%% Read columns of data according to the format.
% This call is based on the structure of the file used to generate this
% code. If an error occurs for a different file, try regenerating the code
% from the Import Tool.
dataArray = textscan(fileID, formatSpec, endRow(1)-startRow(1)+1, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines', startRow(1)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
for block=2:length(startRow)
    frewind(fileID);
    dataArrayBlock = textscan(fileID, formatSpec, endRow(block)-startRow(block)+1, 'Delimiter', delimiter, 'TextType', 'string', 'EmptyValue', NaN, 'HeaderLines', startRow(block)-1, 'ReturnOnError', false, 'EndOfLine', '\r\n');
    for col=1:length(dataArray)
        dataArray{col} = [dataArray{col};dataArrayBlock{col}];
    end
end

%% Close the text file.
fclose(fileID);

%% Post processing for unimportable data.
% No unimportable data rules were applied during the import, so no post
% processing code is included. To generate code which works for
% unimportable data, select unimportable cells in a file and regenerate the
% script.

%% Create output variable
headPose = table(dataArray{1:end-1}, 'VariableNames', {'frame','timestamp','confidence','success','gaze_0_x','gaze_0_y','gaze_0_z','gaze_1_x','gaze_1_y','gaze_1_z','pose_Tx','pose_Ty','pose_Tz','pose_Rx','pose_Ry','pose_Rz','x_0','x_1','x_2','x_3','x_4','x_5','x_6','x_7','x_8','x_9','x_10','x_11','x_12','x_13','x_14','x_15','x_16','x_17','x_18','x_19','x_20','x_21','x_22','x_23','x_24','x_25','x_26','x_27','x_28','x_29','x_30','x_31','x_32','x_33','x_34','x_35','x_36','x_37','x_38','x_39','x_40','x_41','x_42','x_43','x_44','x_45','x_46','x_47','x_48','x_49','x_50','x_51','x_52','x_53','x_54','x_55','x_56','x_57','x_58','x_59','x_60','x_61','x_62','x_63','x_64','x_65','x_66','x_67','y_0','y_1','y_2','y_3','y_4','y_5','y_6','y_7','y_8','y_9','y_10','y_11','y_12','y_13','y_14','y_15','y_16','y_17','y_18','y_19','y_20','y_21','y_22','y_23','y_24','y_25','y_26','y_27','y_28','y_29','y_30','y_31','y_32','y_33','y_34','y_35','y_36','y_37','y_38','y_39','y_40','y_41','y_42','y_43','y_44','y_45','y_46','y_47','y_48','y_49','y_50','y_51','y_52','y_53','y_54','y_55','y_56','y_57','y_58','y_59','y_60','y_61','y_62','y_63','y_64','y_65','y_66','y_67','X_0','X_1','X_2','X_3','X_4','X_5','X_6','X_7','X_8','X_9','X_10','X_11','X_12','X_13','X_14','X_15','X_16','X_17','X_18','X_19','X_20','X_21','X_22','X_23','X_24','X_25','X_26','X_27','X_28','X_29','X_30','X_31','X_32','X_33','X_34','X_35','X_36','X_37','X_38','X_39','X_40','X_41','X_42','X_43','X_44','X_45','X_46','X_47','X_48','X_49','X_50','X_51','X_52','X_53','X_54','X_55','X_56','X_57','X_58','X_59','X_60','X_61','X_62','X_63','X_64','X_65','X_66','X_67','Y_0','Y_1','Y_2','Y_3','Y_4','Y_5','Y_6','Y_7','Y_8','Y_9','Y_10','Y_11','Y_12','Y_13','Y_14','Y_15','Y_16','Y_17','Y_18','Y_19','Y_20','Y_21','Y_22','Y_23','Y_24','Y_25','Y_26','Y_27','Y_28','Y_29','Y_30','Y_31','Y_32','Y_33','Y_34','Y_35','Y_36','Y_37','Y_38','Y_39','Y_40','Y_41','Y_42','Y_43','Y_44','Y_45','Y_46','Y_47','Y_48','Y_49','Y_50','Y_51','Y_52','Y_53','Y_54','Y_55','Y_56','Y_57','Y_58','Y_59','Y_60','Y_61','Y_62','Y_63','Y_64','Y_65','Y_66','Y_67','Z_0','Z_1','Z_2','Z_3','Z_4','Z_5','Z_6','Z_7','Z_8','Z_9','Z_10','Z_11','Z_12','Z_13','Z_14','Z_15','Z_16','Z_17','Z_18','Z_19','Z_20','Z_21','Z_22','Z_23','Z_24','Z_25','Z_26','Z_27','Z_28','Z_29','Z_30','Z_31','Z_32','Z_33','Z_34','Z_35','Z_36','Z_37','Z_38','Z_39','Z_40','Z_41','Z_42','Z_43','Z_44','Z_45','Z_46','Z_47','Z_48','Z_49','Z_50','Z_51','Z_52','Z_53','Z_54','Z_55','Z_56','Z_57','Z_58','Z_59','Z_60','Z_61','Z_62','Z_63','Z_64','Z_65','Z_66','Z_67','p_scale','p_rx','p_ry','p_rz','p_tx','p_ty','p_0','p_1','p_2','p_3','p_4','p_5','p_6','p_7','p_8','p_9','p_10','p_11','p_12','p_13','p_14','p_15','p_16','p_17','p_18','p_19','p_20','p_21','p_22','p_23','p_24','p_25','p_26','p_27','p_28','p_29','p_30','p_31','p_32','p_33','AU01_r','AU02_r','AU04_r','AU05_r','AU06_r','AU07_r','AU09_r','AU10_r','AU12_r','AU14_r','AU15_r','AU17_r','AU20_r','AU23_r','AU25_r','AU26_r','AU45_r','AU01_c','AU02_c','AU04_c','AU05_c','AU06_c','AU07_c','AU09_c','AU10_c','AU12_c','AU14_c','AU15_c','AU17_c','AU20_c','AU23_c','AU25_c','AU26_c','AU28_c','AU45_c'});
