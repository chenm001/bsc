(* synthesize *)
module sysResetBy_RightReset (Reset r1,
			      (* reset_by="r2" *) Bool b,
			      Reset r2,
			      Empty ifc);

   Reg#(Bool) rg <- mkReg(True, reset_by r2);

   rule r;
      rg <= rg && b;
   endrule

endmodule

