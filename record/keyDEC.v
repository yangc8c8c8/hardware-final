module KeyDEC(key_encoded,freq);
	input  [5:0]key_encoded;
	output [31:0]freq;
	
	assign freq=key_encoded==6'd 0 ?32'd130:
				key_encoded==6'd 1 ?32'd138:
				key_encoded==6'd 2 ?32'd146:
				key_encoded==6'd 3 ?32'd155:
				key_encoded==6'd 4 ?32'd164:
				key_encoded==6'd 5 ?32'd174:
				key_encoded==6'd 6 ?32'd185:
				key_encoded==6'd 7 ?32'd196:
				key_encoded==6'd 8 ?32'd207:
				key_encoded==6'd 9 ?32'd220:
				key_encoded==6'd10 ?32'd233:
				key_encoded==6'd11 ?32'd246:
				key_encoded==6'd12 ?32'd261:
				key_encoded==6'd13 ?32'd277:
				key_encoded==6'd14 ?32'd293:
				key_encoded==6'd15 ?32'd311:
				key_encoded==6'd16 ?32'd329:
				key_encoded==6'd17 ?32'd349:
				key_encoded==6'd18 ?32'd369:
				key_encoded==6'd19 ?32'd392:
				key_encoded==6'd20 ?32'd415:
				key_encoded==6'd21 ?32'd440:
				key_encoded==6'd22 ?32'd466:
				key_encoded==6'd23 ?32'd493:
				key_encoded==6'd24 ?32'd523:
				key_encoded==6'd25 ?32'd554:
				key_encoded==6'd26 ?32'd587:
				key_encoded==6'd27 ?32'd622:
				key_encoded==6'd28 ?32'd659:
				key_encoded==6'd29 ?32'd698:
				key_encoded==6'd30 ?32'd739:
				key_encoded==6'd31 ?32'd783:
				key_encoded==6'd32 ?32'd830:
				key_encoded==6'd33 ?32'd880:
				key_encoded==6'd34 ?32'd932:
				key_encoded==6'd35 ?32'd987:
				key_encoded==6'd36 ?32'd1046:
				key_encoded==6'd37 ?32'd1108:
				key_encoded==6'd38 ?32'd1174:
				key_encoded==6'd39 ?32'd1244:
				key_encoded==6'd40 ?32'd1318:
				key_encoded==6'd41 ?32'd1396:
				key_encoded==6'd42 ?32'd1480:
				key_encoded==6'd43 ?32'd1568:
				key_encoded==6'd44 ?32'd1661:
				key_encoded==6'd45 ?32'd1760:
				key_encoded==6'd46 ?32'd1864:
				key_encoded==6'd47 ?32'd1975:32'd0;
endmodule