module music(beat_num,pitch1,pitch2);
	input  [9:0]beat_num;
	output reg [5:0]pitch1,pitch2;
	
	always@(*)begin
		case(beat_num)
			10'd0   : pitch2 = 6'd18;								
			10'd1   : pitch2 = 6'd18;
			10'd2   : pitch2 = 6'd18;
			10'd3   : pitch2 = 6'd18;
			10'd4   : pitch2 = 6'd18;
			10'd5   : pitch2 = 6'd18;
			10'd6   : pitch2 = 6'd18;
			10'd7   : pitch2 = 6'd18;
			//----  -------2---6'd---
			10'd8   : pitch2 = 6'd48;
			10'd9   : pitch2 = 6'd48;
			10'd10  : pitch2 = 6'd48;
			10'd11  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd12  : pitch2 = 6'd18;
			10'd13  : pitch2 = 6'd18;
			10'd14  : pitch2 = 6'd18;
			10'd15  : pitch2 = 6'd18;
			10'd16  : pitch2 = 6'd18;
			10'd17  : pitch2 = 6'd18;
			10'd18  : pitch2 = 6'd18;
			10'd19  : pitch2 = 6'd18;
			//----- -------2---6'd--
			10'd20  : pitch2 = 6'd48;
			10'd21  : pitch2 = 6'd48;
			10'd22  : pitch2 = 6'd48;
			10'd23  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd24  : pitch2 = 6'd18;
			10'd25  : pitch2 = 6'd18;
			10'd26  : pitch2 = 6'd18;
			10'd27  : pitch2 = 6'd18;
			10'd28  : pitch2 = 6'd18;
			10'd29  : pitch2 = 6'd18;
			10'd30  : pitch2 = 6'd18;
			10'd31  : pitch2 = 6'd18;
			//----- -------2---6'd--
			10'd32  : pitch2 = 6'd48;
			10'd33  : pitch2 = 6'd48;
			10'd34  : pitch2 = 6'd48;
			10'd35  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd36  : pitch2 = 6'd22;
			10'd37  : pitch2 = 6'd22;
			10'd38  : pitch2 = 6'd22;
			10'd39  : pitch2 = 6'd22;
			10'd40  : pitch2 = 6'd22;
			10'd41  : pitch2 = 6'd22;
			10'd42  : pitch2 = 6'd22;
			10'd43  : pitch2 = 6'd22;
			//----- -------2---6'd--
			10'd44  : pitch2 = 6'd48;
			10'd45  : pitch2 = 6'd48;
			10'd46  : pitch2 = 6'd48;
			10'd47  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd48  : pitch2 = 6'd27;
			10'd49  : pitch2 = 6'd27;
			10'd50  : pitch2 = 6'd27;
			10'd51  : pitch2 = 6'd27;
			10'd52  : pitch2 = 6'd27;
			10'd53  : pitch2 = 6'd27;
			10'd54  : pitch2 = 6'd27;
			10'd55  : pitch2 = 6'd27;
			//----- -------2---6'd--
			10'd56  : pitch2 = 6'd48;
			10'd57  : pitch2 = 6'd48;
			10'd58  : pitch2 = 6'd48;
			10'd59  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd60  : pitch2 = 6'd27;
			10'd61  : pitch2 = 6'd27;
			10'd62  : pitch2 = 6'd27;
			10'd63  : pitch2 = 6'd27;
			10'd64  : pitch2 = 6'd27;
			10'd65  : pitch2 = 6'd27;
			10'd66  : pitch2 = 6'd27;
			10'd67  : pitch2 = 6'd27;
			//----- -------2---6'd--
			10'd68  : pitch2 = 6'd48;
			10'd69  : pitch2 = 6'd48;
			10'd70  : pitch2 = 6'd48;
			10'd71  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd72  : pitch2 = 6'd27;
			10'd73  : pitch2 = 6'd27;
			10'd74  : pitch2 = 6'd27;
			10'd75  : pitch2 = 6'd27;
			10'd76  : pitch2 = 6'd27;
			10'd77  : pitch2 = 6'd27;
			10'd78  : pitch2 = 6'd27;
			10'd79  : pitch2 = 6'd27;
			//----- -------2---6'd--
			10'd80  : pitch2 = 6'd48;
			10'd81  : pitch2 = 6'd48;
			10'd82  : pitch2 = 6'd48;
			10'd83  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd84  : pitch2 = 6'd25;
			10'd85  : pitch2 = 6'd25;
			10'd86  : pitch2 = 6'd25;
			10'd87  : pitch2 = 6'd25;
			10'd88  : pitch2 = 6'd25;
			10'd89  : pitch2 = 6'd25;
			10'd90  : pitch2 = 6'd25;
			10'd91  : pitch2 = 6'd25;
			//----- -------2---6'd--
			10'd92  : pitch2 = 6'd48;
			10'd93  : pitch2 = 6'd48;
			10'd94  : pitch2 = 6'd48;
			10'd95  : pitch2 = 6'd48;
			//----- -------2---6'd--
			10'd96  : pitch2 = 6'd22;
			10'd97  : pitch2 = 6'd22;
			10'd98  : pitch2 = 6'd22;
			10'd99  : pitch2 = 6'd22;
			10'd100 : pitch2 = 6'd22;
			10'd101 : pitch2 = 6'd22;
			10'd102 : pitch2 = 6'd22;
			10'd103 : pitch2 = 6'd22;
			//-------------2---6'd-
			10'd104 : pitch2 = 6'd48;
			10'd105 : pitch2 = 6'd48;
			10'd106 : pitch2 = 6'd48;
			10'd107 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd108 : pitch2 = 6'd22;
			10'd109 : pitch2 = 6'd22;
			10'd110 : pitch2 = 6'd22;
			10'd111 : pitch2 = 6'd22;
			10'd112 : pitch2 = 6'd22;
			10'd113 : pitch2 = 6'd22;
			10'd114 : pitch2 = 6'd22;
			10'd115 : pitch2 = 6'd22;
			//-------------2---6'd-
			10'd116 : pitch2 = 6'd48;
			10'd117 : pitch2 = 6'd48;
			10'd118 : pitch2 = 6'd48;
			10'd119 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd120 : pitch2 = 6'd22;
			10'd121 : pitch2 = 6'd22;
			10'd122 : pitch2 = 6'd22;
			10'd123 : pitch2 = 6'd22;
			10'd124 : pitch2 = 6'd22;
			10'd125 : pitch2 = 6'd22;
			10'd126 : pitch2 = 6'd22;
			10'd127 : pitch2 = 6'd22;
			//-------------2---6'd-
			10'd128 : pitch2 = 6'd48;
			10'd129 : pitch2 = 6'd48;
			10'd130 : pitch2 = 6'd48;
			10'd131 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd132 : pitch2 = 6'd22;
			10'd133 : pitch2 = 6'd22;
			10'd134 : pitch2 = 6'd22;
			10'd135 : pitch2 = 6'd22;
			10'd136 : pitch2 = 6'd22;
			10'd137 : pitch2 = 6'd22;
			10'd138 : pitch2 = 6'd22;
			10'd139 : pitch2 = 6'd22;
			//-------------2---6'd-
			10'd140 : pitch2 = 6'd48;
			10'd141 : pitch2 = 6'd48;
			10'd142 : pitch2 = 6'd48;
			10'd143 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd144 : pitch2 = 6'd17;
			10'd145 : pitch2 = 6'd17;
			10'd146 : pitch2 = 6'd17;
			10'd147 : pitch2 = 6'd17;
			10'd148 : pitch2 = 6'd17;
			10'd149 : pitch2 = 6'd17;
			10'd150 : pitch2 = 6'd17;
			10'd151 : pitch2 = 6'd17;
			//-------------2---6'd-
			10'd152 : pitch2 = 6'd48;
			10'd153 : pitch2 = 6'd48;
			10'd154 : pitch2 = 6'd48;
			10'd155 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd156 : pitch2 = 6'd17;
			10'd157 : pitch2 = 6'd17;
			10'd158 : pitch2 = 6'd17;
			10'd159 : pitch2 = 6'd17;
			10'd160 : pitch2 = 6'd17;
			10'd161 : pitch2 = 6'd17;
			10'd162 : pitch2 = 6'd17;
			10'd163 : pitch2 = 6'd17;
			//-------------2---6'd-
			10'd164 : pitch2 = 6'd48;
			10'd165 : pitch2 = 6'd48;
			10'd166 : pitch2 = 6'd48;
			10'd167 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd168 : pitch2 = 6'd17;
			10'd169 : pitch2 = 6'd17;
			10'd170 : pitch2 = 6'd17;
			10'd171 : pitch2 = 6'd17;
			10'd172 : pitch2 = 6'd17;
			10'd173 : pitch2 = 6'd17;
			10'd174 : pitch2 = 6'd17;
			10'd175 : pitch2 = 6'd17;
			//-------------2---6'd-
			10'd176 : pitch2 = 6'd48;
			10'd177 : pitch2 = 6'd48;
			10'd178 : pitch2 = 6'd48;
			10'd179 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd180 : pitch2 = 6'd15;
			10'd181 : pitch2 = 6'd15;
			10'd182 : pitch2 = 6'd15;
			10'd183 : pitch2 = 6'd15;
			10'd184 : pitch2 = 6'd15;
			10'd185 : pitch2 = 6'd15;
			10'd186 : pitch2 = 6'd15;
			10'd187 : pitch2 = 6'd15;
			//-------------2---6'd-
			10'd188 : pitch2 = 6'd48;
			10'd189 : pitch2 = 6'd48;
			10'd190 : pitch2 = 6'd48;
			10'd191 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd192 : pitch2 = 6'd48;
			10'd193 : pitch2 = 6'd48;
			10'd194 : pitch2 = 6'd48;
			10'd195 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd196 : pitch2 = 6'd30;
			10'd197 : pitch2 = 6'd30;
			10'd198 : pitch2 = 6'd30;
			10'd199 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd200 : pitch2 = 6'd48;
			10'd201 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd202 : pitch2 = 6'd30;
			10'd203 : pitch2 = 6'd30;
			10'd204 : pitch2 = 6'd30;
			10'd205 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd206 : pitch2 = 6'd48;
			10'd207 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd208 : pitch2 = 6'd27;
			10'd209 : pitch2 = 6'd27;
			10'd210 : pitch2 = 6'd27;
			10'd211 : pitch2 = 6'd27;
			//-------------2---6'd-
			10'd212 : pitch2 = 6'd48;
			10'd213 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd214 : pitch2 = 6'd30;
			10'd215 : pitch2 = 6'd30;
			10'd216 : pitch2 = 6'd30;
			10'd217 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd218 : pitch2 = 6'd48;
			10'd219 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd220 : pitch2 = 6'd27;
			10'd221 : pitch2 = 6'd27;
			10'd222 : pitch2 = 6'd27;
			10'd223 : pitch2 = 6'd27;
			//-------------2---6'd-
			10'd224 : pitch2 = 6'd48;
			10'd225 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd226 : pitch2 = 6'd30;
			10'd227 : pitch2 = 6'd30;
			10'd228 : pitch2 = 6'd30;
			10'd229 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd230 : pitch2 = 6'd48;
			10'd231 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd232 : pitch2 = 6'd32;
			10'd233 : pitch2 = 6'd32;
			10'd234 : pitch2 = 6'd32;
			10'd235 : pitch2 = 6'd32;
			//-------------2---6'd-
			10'd236 : pitch2 = 6'd48;
			10'd237 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd238 : pitch2 = 6'd34;
			10'd239 : pitch2 = 6'd34;
			10'd240 : pitch2 = 6'd34;
			10'd241 : pitch2 = 6'd34;
			10'd242 : pitch2 = 6'd34;
			10'd243 : pitch2 = 6'd34;
			10'd244 : pitch2 = 6'd34;
			10'd245 : pitch2 = 6'd34;
			//-------------2---6'd-
			10'd246 : pitch2 = 6'd48;
			10'd247 : pitch2 = 6'd48;
			10'd248 : pitch2 = 6'd48;
			10'd249 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd250 : pitch2 = 6'd30;
			10'd251 : pitch2 = 6'd30;
			10'd252 : pitch2 = 6'd30;
			10'd253 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd254 : pitch2 = 6'd48;
			10'd255 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd256 : pitch2 = 6'd30;
			10'd257 : pitch2 = 6'd30;
			10'd258 : pitch2 = 6'd30;
			10'd259 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd260 : pitch2 = 6'd48;
			10'd261 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd262 : pitch2 = 6'd25;
			10'd263 : pitch2 = 6'd25;
			10'd264 : pitch2 = 6'd25;
			10'd265 : pitch2 = 6'd25;
			//-------------2---6'd-
			10'd266 : pitch2 = 6'd48;
			10'd267 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd268 : pitch2 = 6'd34;
			10'd269 : pitch2 = 6'd34;
			10'd270 : pitch2 = 6'd34;
			10'd271 : pitch2 = 6'd34;
			10'd272 : pitch2 = 6'd34;
			10'd273 : pitch2 = 6'd34;
			10'd274 : pitch2 = 6'd34;
			10'd275 : pitch2 = 6'd34;
			10'd276 : pitch2 = 6'd34;
			10'd277 : pitch2 = 6'd34;
			10'd278 : pitch2 = 6'd34;
			10'd279 : pitch2 = 6'd34;
			10'd280 : pitch2 = 6'd34;
			10'd281 : pitch2 = 6'd34;
			10'd282 : pitch2 = 6'd34;
			10'd283 : pitch2 = 6'd34;
			//-------------2---6'd
			10'd284 : pitch2 = 6'd48;
			10'd285 : pitch2 = 6'd48;
			10'd286 : pitch2 = 6'd48;
			10'd287 : pitch2 = 6'd48;
			10'd288 : pitch2 = 6'd48;
			10'd289 : pitch2 = 6'd48;
			10'd290 : pitch2 = 6'd48;
			10'd291 : pitch2 = 6'd48;
			10'd292 : pitch2 = 6'd48;
			10'd293 : pitch2 = 6'd48;
			10'd294 : pitch2 = 6'd48;
			10'd295 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd296 : pitch2 = 6'd30;
			10'd297 : pitch2 = 6'd30;
			10'd298 : pitch2 = 6'd30;
			10'd299 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd300 : pitch2 = 6'd48;
			10'd301 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd302 : pitch2 = 6'd30;
			10'd303 : pitch2 = 6'd30;
			10'd304 : pitch2 = 6'd30;
			10'd305 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd306 : pitch2 = 6'd48;
			10'd307 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd308 : pitch2 = 6'd30;
			10'd309 : pitch2 = 6'd30;
			10'd310 : pitch2 = 6'd30;
			10'd311 : pitch2 = 6'd30;
			//-------------2---6'd-
			10'd312 : pitch2 = 6'd48;
			10'd313 : pitch2 = 6'd48;
			//-------------2---6'd-
			10'd314 : pitch2 = 6'd29;
			10'd315 : pitch2 = 6'd29;
			10'd316 : pitch2 = 6'd29;
			10'd317 : pitch2 = 6'd29;
			10'd318 : pitch2 = 6'd29;
			10'd319 : pitch2 = 6'd29;
			10'd320 : pitch2 = 6'd29;
			10'd321 : pitch2 = 6'd29;
			10'd322 : pitch2 = 6'd29;
			10'd323 : pitch2 = 6'd29;
			10'd324 : pitch2 = 6'd29;
			10'd325 : pitch2 = 6'd29;
			10'd326 : pitch2 = 6'd29;
			10'd327 : pitch2 = 6'd29;
			10'd328 : pitch2 = 6'd29;
			10'd329 : pitch2 = 6'd29;
			//-------------2---6'd
			10'd330 : pitch2 = 6'd48;
			10'd331 : pitch2 = 6'd48;
			10'd332 : pitch2 = 6'd48;
			10'd333 : pitch2 = 6'd48;
			//-------------2---6'd
			10'd334 : pitch2 = 6'd29;
			10'd335 : pitch2 = 6'd29;
			10'd336 : pitch2 = 6'd29;
			10'd337 : pitch2 = 6'd29;
			//   3         2   6'd
			10'd338 : pitch2 = 6'd48;
			10'd339 : pitch2 = 6'd48;
			//             2   6'd
			10'd340 : pitch2 = 6'd29;
			10'd341 : pitch2 = 6'd29;
			10'd342 : pitch2 = 6'd29;
			10'd343 : pitch2 = 6'd29;
			//-------------2---6'd
			10'd344 : pitch2 = 6'd48;
			10'd345 : pitch2 = 6'd48;
			10'd346 : pitch2 = 6'd27;
			10'd347 : pitch2 = 6'd27;
			10'd348 : pitch2 = 6'd27;
			10'd349 : pitch2 = 6'd27;
			10'd350 : pitch2 = 6'd48;
			10'd351 : pitch2 = 6'd48;
			10'd352 : pitch2 = 6'd30;
			10'd353 : pitch2 = 6'd30;
			10'd354 : pitch2 = 6'd30;
			10'd355 : pitch2 = 6'd30;
			10'd356 : pitch2 = 6'd30;
			10'd357 : pitch2 = 6'd30;
			10'd358 : pitch2 = 6'd30;
			10'd359 : pitch2 = 6'd30;
			default   pitch2 = 6'd48; 
		endcase
	end
	
	always@(*)begin
		case(beat_num)
		10'd0   : pitch1 = 3;								
		10'd1   : pitch1 = 3;
		10'd2   : pitch1 = 3;
		10'd3   : pitch1 = 3;
		10'd4   : pitch1 = 3;
		10'd5   : pitch1 = 3;
		10'd6   : pitch1 = 3;
		10'd7   : pitch1 = 3;
		//  -------1----------
		10'd8   : pitch1 = 3;
		10'd9   : pitch1 = 3;
		10'd10  : pitch1 = 3;
		10'd11  : pitch1 = 3;
		//- -------1---------
		10'd12  : pitch1 = 3;
		10'd13  : pitch1 = 3;
		10'd14  : pitch1 = 3;
		10'd15  : pitch1 = 3;
		10'd16  : pitch1 = 3;
		10'd17  : pitch1 = 3;
		10'd18  : pitch1 = 3;
		10'd19  : pitch1 = 3;
		//- -------1-------
		10'd20  : pitch1 = 3;
		10'd21  : pitch1 = 3;
		10'd22  : pitch1 = 3;
		10'd23  : pitch1 = 3;
		//- -------1-------
		10'd24  : pitch1 = 3;
		10'd25  : pitch1 = 3;
		10'd26  : pitch1 = 3;
		10'd27  : pitch1 = 3;
		10'd28  : pitch1 = 3;
		10'd29  : pitch1 = 3;
		10'd30  : pitch1 = 3;
		10'd31  : pitch1 = 3;
		//- -------1------
		10'd32  : pitch1 = 3;
		10'd33  : pitch1 = 3;
		10'd34  : pitch1 = 3;
		10'd35  : pitch1 = 3;
		//- -------1-------
		10'd36  : pitch1 = 3;
		10'd37  : pitch1 = 3;
		10'd38  : pitch1 = 3;
		10'd39  : pitch1 = 3;
		10'd40  : pitch1 = 3;
		10'd41  : pitch1 = 3;
		10'd42  : pitch1 = 3;
		10'd43  : pitch1 = 3;
		//- -------1---------
		10'd44  : pitch1 = 48;
		10'd45  : pitch1 = 48;
		10'd46  : pitch1 = 48;
		10'd47  : pitch1 = 48;
		//- -------1---------
		10'd48  : pitch1 = 0;
		10'd49  : pitch1 = 0;
		10'd50  : pitch1 = 0;
		10'd51  : pitch1 = 0;
		10'd52  : pitch1 = 0;
		10'd53  : pitch1 = 0;
		10'd54  : pitch1 = 0;
		10'd55  : pitch1 = 0;
		//- -------1---0----
		10'd56  : pitch1 = 0;
		10'd57  : pitch1 = 0;
		10'd58  : pitch1 = 0;
		10'd59  : pitch1 = 0;
		//- -------1---0----
		10'd60  : pitch1 = 0;
		10'd61  : pitch1 = 0;
		10'd62  : pitch1 = 0;
		10'd63  : pitch1 = 0;
		10'd64  : pitch1 = 0;
		10'd65  : pitch1 = 0;
		10'd66  : pitch1 = 0;
		10'd67  : pitch1 = 0;
		//- -------1---0----
		10'd68  : pitch1 = 0;
		10'd69  : pitch1 = 0;
		10'd70  : pitch1 = 0;
		10'd71  : pitch1 = 0;
		//- -------1---------
		10'd72  : pitch1 = 0;
		10'd73  : pitch1 = 0;
		10'd74  : pitch1 = 0;
		10'd75  : pitch1 = 0;
		10'd76  : pitch1 = 0;
		10'd77  : pitch1 = 0;
		10'd78  : pitch1 = 0;
		10'd79  : pitch1 = 0;
		//- -------1---0----
		10'd80  : pitch1 = 0;
		10'd81  : pitch1 = 0;
		10'd82  : pitch1 = 0;
		10'd83  : pitch1 = 0;
		//- -------1---0----
		10'd84  : pitch1 = 0;
		10'd85  : pitch1 = 0;
		10'd86  : pitch1 = 0;
		10'd87  : pitch1 = 0;
		10'd88  : pitch1 = 0;
		10'd89  : pitch1 = 0;
		10'd90  : pitch1 = 0;
		10'd91  : pitch1 = 0;
		//- -------1---------
		10'd92  : pitch1 = 48;
		10'd93  : pitch1 = 48;
		10'd94  : pitch1 = 48;
		10'd95  : pitch1 = 48;
		//- -------1---------
		10'd96  : pitch1 = 6;
		10'd97  : pitch1 = 6;
		10'd98  : pitch1 = 6;
		10'd99  : pitch1 = 6;
		10'd100 : pitch1 = 6;
		10'd101 : pitch1 = 6;
		10'd102 : pitch1 = 6;
		10'd103 : pitch1 = 6;
		//---------1--------
		10'd104 : pitch1 = 6;
		10'd105 : pitch1 = 6;
		10'd106 : pitch1 = 6;
		10'd107 : pitch1 = 6;
		//---------1---6---
		10'd108 : pitch1 = 6;
		10'd109 : pitch1 = 6;
		10'd110 : pitch1 = 6;
		10'd111 : pitch1 = 6;
		10'd112 : pitch1 = 6;
		10'd113 : pitch1 = 6;
		10'd114 : pitch1 = 6;
		10'd115 : pitch1 = 6;
		//---------1---6---
		10'd116 : pitch1 = 6;
		10'd117 : pitch1 = 6;
		10'd118 : pitch1 = 6;
		10'd119 : pitch1 = 6;
		//---------1---6---
		10'd120 : pitch1 = 6;
		10'd121 : pitch1 = 6;
		10'd122 : pitch1 = 6;
		10'd123 : pitch1 = 6;
		10'd124 : pitch1 = 6;
		10'd125 : pitch1 = 6;
		10'd126 : pitch1 = 6;
		10'd127 : pitch1 = 6;
		//---------1--------
		10'd128 : pitch1 = 6;
		10'd129 : pitch1 = 6;
		10'd130 : pitch1 = 6;
		10'd131 : pitch1 = 6;
		//---------1---6---
		10'd132 : pitch1 = 6;
		10'd133 : pitch1 = 6;
		10'd134 : pitch1 = 6;
		10'd135 : pitch1 = 6;
		10'd136 : pitch1 = 6;
		10'd137 : pitch1 = 6;
		10'd138 : pitch1 = 6;
		10'd139 : pitch1 = 6;
		//---------1--------
		10'd140 : pitch1 = 48;
		10'd141 : pitch1 = 48;
		10'd142 : pitch1 = 48;
		10'd143 : pitch1 = 48;
		//---------1--------
		10'd144 : pitch1 = 1;
		10'd145 : pitch1 = 1;
		10'd146 : pitch1 = 1;
		10'd147 : pitch1 = 1;
		10'd148 : pitch1 = 1;
		10'd149 : pitch1 = 1;
		10'd150 : pitch1 = 1;
		10'd151 : pitch1 = 1;
		//---------1---1---
		10'd152 : pitch1 = 1;
		10'd153 : pitch1 = 1;
		10'd154 : pitch1 = 1;
		10'd155 : pitch1 = 1;
		//---------1---1---
		10'd156 : pitch1 = 1;
		10'd157 : pitch1 = 1;
		10'd158 : pitch1 = 1;
		10'd159 : pitch1 = 1;
		10'd160 : pitch1 = 1;
		10'd161 : pitch1 = 1;
		10'd162 : pitch1 = 1;
		10'd163 : pitch1 = 1;
		//---------1--------
		10'd164 : pitch1 = 1;
		10'd165 : pitch1 = 1;
		10'd166 : pitch1 = 1;
		10'd167 : pitch1 = 1;
		//---------1---1---
		10'd168 : pitch1 = 1;
		10'd169 : pitch1 = 1;
		10'd170 : pitch1 = 1;
		10'd171 : pitch1 = 1;
		10'd172 : pitch1 = 1;
		10'd173 : pitch1 = 1;
		10'd174 : pitch1 = 1;
		10'd175 : pitch1 = 1;
		//---------1---1---
		10'd176 : pitch1 = 1;
		10'd177 : pitch1 = 1;
		10'd178 : pitch1 = 1;
		10'd179 : pitch1 = 1;
		//---------1---1---
		10'd180 : pitch1 = 1;
		10'd181 : pitch1 = 1;
		10'd182 : pitch1 = 1;
		10'd183 : pitch1 = 1;
		10'd184 : pitch1 = 1;
		10'd185 : pitch1 = 1;
		10'd186 : pitch1 = 1;
		10'd187 : pitch1 = 1;
		//---------1--------
		10'd188 : pitch1 = 48;
		10'd189 : pitch1 = 48;
		10'd190 : pitch1 = 48;
		10'd191 : pitch1 = 48;
		//---------1--------
		10'd192 : pitch1 = 3;
		10'd193 : pitch1 = 3;
		10'd194 : pitch1 = 3;
		10'd195 : pitch1 = 3;
		//---------1--------
		10'd196 : pitch1 = 3;
		10'd197 : pitch1 = 3;
		10'd198 : pitch1 = 3;
		10'd199 : pitch1 = 3;
		//---------1---3---
		10'd200 : pitch1 = 3;
		10'd201 : pitch1 = 3;
		//---------1---3---
		10'd202 : pitch1 = 3;
		10'd203 : pitch1 = 3;
		10'd204 : pitch1 = 3;
		10'd205 : pitch1 = 3;
		//---------1---3---
		10'd206 : pitch1 = 3;
		10'd207 : pitch1 = 3;
		//---------1---3---
		10'd208 : pitch1 = 3;
		10'd209 : pitch1 = 3;
		10'd210 : pitch1 = 3;
		10'd211 : pitch1 = 3;
		//---------1---3---
		10'd212 : pitch1 = 3;
		10'd213 : pitch1 = 3;
		//---------1---3---
		10'd214 : pitch1 = 3;
		10'd215 : pitch1 = 3;
		10'd216 : pitch1 = 3;
		10'd217 : pitch1 = 3;
		//---------1---3---
		10'd218 : pitch1 = 3;
		10'd219 : pitch1 = 3;
		//---------1---3---
		10'd220 : pitch1 = 3;
		10'd221 : pitch1 = 3;
		10'd222 : pitch1 = 3;
		10'd223 : pitch1 = 3;
		//---------1---3---
		10'd224 : pitch1 = 3;
		10'd225 : pitch1 = 3;
		//---------1---3---
		10'd226 : pitch1 = 3;
		10'd227 : pitch1 = 3;
		10'd228 : pitch1 = 3;
		10'd229 : pitch1 = 3;
		//---------1---3---
		10'd230 : pitch1 = 3;
		10'd231 : pitch1 = 3;
		//---------1---3---
		10'd232 : pitch1 = 3;
		10'd233 : pitch1 = 3;
		10'd234 : pitch1 = 48;
		10'd235 : pitch1 = 48;
		10'd236 : pitch1 = 48;
		10'd237 : pitch1 = 48;
		//---------1--------
		10'd238 : pitch1 = 0;
		10'd239 : pitch1 = 0;
		10'd240 : pitch1 = 0;
		10'd241 : pitch1 = 0;
		10'd242 : pitch1 = 0;
		10'd243 : pitch1 = 0;
		10'd244 : pitch1 = 0;
		10'd245 : pitch1 = 0;
		//---------1---0---
		10'd246 : pitch1 = 0;
		10'd247 : pitch1 = 0;
		10'd248 : pitch1 = 0;
		10'd249 : pitch1 = 0;
		//---------1---0---
		10'd250 : pitch1 = 0;
		10'd251 : pitch1 = 0;
		10'd252 : pitch1 = 0;
		10'd253 : pitch1 = 0;
		//---------1---0---
		10'd254 : pitch1 = 0;
		10'd255 : pitch1 = 0;
		//---------1---0---
		10'd256 : pitch1 = 0;
		10'd257 : pitch1 = 0;
		10'd258 : pitch1 = 0;
		10'd259 : pitch1 = 0;
		//---------1---0---
		10'd260 : pitch1 = 0;
		10'd261 : pitch1 = 0;
		//---------1---0---
		10'd262 : pitch1 = 0;
		10'd263 : pitch1 = 0;
		10'd264 : pitch1 = 0;
		10'd265 : pitch1 = 0;
		//---------1---0---
		10'd266 : pitch1 = 0;
		10'd267 : pitch1 = 0;
		//---------1---0---
		10'd268 : pitch1 = 0;
		10'd269 : pitch1 = 0;
		10'd270 : pitch1 = 0;
		10'd271 : pitch1 = 0;
		10'd272 : pitch1 = 0;
		10'd273 : pitch1 = 0;
		10'd274 : pitch1 = 0;
		10'd275 : pitch1 = 0;
		10'd276 : pitch1 = 0;
		10'd277 : pitch1 = 0;
		10'd278 : pitch1 = 0;
		10'd279 : pitch1 = 0;
		10'd280 : pitch1 = 0;
		10'd281 : pitch1 = 0;
		10'd282 : pitch1 = 0;
		10'd283 : pitch1 = 0;
		//---------1-------
		10'd284 : pitch1 = 48;
		10'd285 : pitch1 = 48;
		10'd286 : pitch1 = 48;
		10'd287 : pitch1 = 48;
		10'd288 : pitch1 = 6;
		10'd289 : pitch1 = 6;
		10'd290 : pitch1 = 6;
		10'd291 : pitch1 = 6;
		10'd292 : pitch1 = 6;
		10'd293 : pitch1 = 6;
		10'd294 : pitch1 = 6;
		10'd295 : pitch1 = 6;
		//---------1--------
		10'd296 : pitch1 = 6;
		10'd297 : pitch1 = 6;
		10'd298 : pitch1 = 6;
		10'd299 : pitch1 = 6;
		//---------1---6---
		10'd300 : pitch1 = 6;
		10'd301 : pitch1 = 6;
		//---------1---6---
		10'd302 : pitch1 = 6;
		10'd303 : pitch1 = 6;
		10'd304 : pitch1 = 6;
		10'd305 : pitch1 = 6;
		//---------1---6---
		10'd306 : pitch1 = 6;
		10'd307 : pitch1 = 6;
		//---------1---6---
		10'd308 : pitch1 = 6;
		10'd309 : pitch1 = 6;
		10'd310 : pitch1 = 48;
		10'd311 : pitch1 = 48;
		//---------1--------
		10'd312 : pitch1 = 48;
		10'd313 : pitch1 = 48;
		//---------1--------
		10'd314 : pitch1 = 1;
		10'd315 : pitch1 = 1;
		10'd316 : pitch1 = 1;
		10'd317 : pitch1 = 1;
		10'd318 : pitch1 = 1;
		10'd319 : pitch1 = 1;
		10'd320 : pitch1 = 1;
		10'd321 : pitch1 = 1;
		10'd322 : pitch1 = 1;
		10'd323 : pitch1 = 1;
		10'd324 : pitch1 = 1;
		10'd325 : pitch1 = 1;
		10'd326 : pitch1 = 1;
		10'd327 : pitch1 = 1;
		10'd328 : pitch1 = 1;
		10'd329 : pitch1 = 1;
		//---------1---1--
		10'd330 : pitch1 = 1;
		10'd331 : pitch1 = 1;
		10'd332 : pitch1 = 1;
		10'd333 : pitch1 = 1;
		//---------1---1--
		10'd334 : pitch1 = 1;
		10'd335 : pitch1 = 1;
		10'd336 : pitch1 = 1;
		10'd337 : pitch1 = 1;
		//3         1
		10'd338 : pitch1 = 1;
		10'd339 : pitch1 = 1;
		//         1
		10'd340 : pitch1 = 1;
		10'd341 : pitch1 = 1;
		10'd342 : pitch1 = 1;
		10'd343 : pitch1 = 1;
		//---------1---1--
		10'd344 : pitch1 = 1;
		10'd345 : pitch1 = 1;
		//         1
		10'd346 : pitch1 = 1;
		10'd347 : pitch1 = 1;
		10'd348 : pitch1 = 1;
		10'd349 : pitch1 = 1;
		//         1
		10'd350 : pitch1 = 1;
		10'd351 : pitch1 = 1;
		//         1
		10'd352 : pitch1 = 1;
		10'd353 : pitch1 = 1;
		10'd354 : pitch1 = 1;
		10'd355 : pitch1 = 1;
		10'd356 : pitch1 = 1;
		10'd357 : pitch1 = 1;
		10'd358 : pitch1 = 1;
		10'd359 : pitch1 = 1;
		//
		default  pitch1 = 48;
		endcase
	end
	
endmodule