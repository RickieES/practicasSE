      � H  ��        cKܺ         g         :   implementation  � c1          6�  e� H! [a  Z     :�  iy L	 _I         y [�  �       �  �     c1     v �          :�     S  #     *�  Y  A     @     q     S �     q  #)  '     @     A     S �c     A  *�  .�     @     '     S ��     '  2�  :�     @     .�     :   NUM_BITS_PAD  :�  �     !   �  6�     �  .�  �          FQ  N!  U�  ]�         J9  R	  Y�  a�          iy     v  ��          J9     :   O  J9  >�     p   �  FQ     Bi          >�     :   CI  R	  >�     p   �  N!      Bi          >�     :   DI  Y�  >�     p   �  U�      Bi          >�     :   S  a�  >�     p   �  ]�      Bi          >�     :   MUXCY  iy  �        �  e�  >�  �     S 
k     *�  qI  u1     @     ma          �A ,�         �) 0�  ma     �� D9  y     ;   � H!  u1  �     @      ��      Q3     }  ��      ��     S  #     *�  ��  ��     @     ��     v  �\     ��      �)     V      ��  �q     
     ��  \  �Y       ��     �q  �)     :   or_tmp  �)  u1     p   �  �A     ��  �Y      u1     @      ��      �     �  ��      �i     S  #     *�  ��  ��     @     ��          �y $�  ��         �a (�  �i  ��     �	  �  ��     3   � ,�  ��  u1     :   i  �i  ��     !   �  ��      ��  ��  ��     S w�     ��  �9  �!     @      �Q                   �Q     �  �	     ;   �  �y  �!  ��     >     �A  ��  �     @      ��     >     FR  ��  ީ     �  ��          �        �      ީ  ��              �!     :   FIRST  �a  ��     E   �  �y  �	  ��     S 	n     ��  �1  �     @      �I                   �I    !  �     ;   � $�  �  ��     >     �A  �� !     S  #     �� � 	�     @    �     >     �A � q     >     FR  �� q     S ,    A ) Y     � q         !     Y    � 	�         Y    \ �            �     Y  ��              �     :   REST (�  ��     E   � $�  �  ��     :   BIT_LOOP 0�  u1     E   � ,�  ��  u1     S  #     *� 8� <i     @    4�     >     �A 4� @Q     � <i         D9        �     @Q  R
              u1     :   LESSTHAN4_GEN L	  �     E   � H!  y  �     S �s     *� S� W�     @    O�         �� �� ܑ 89        �� �� �y <! O�    Y .� Wy [�     ;   � [a W�  �     @     cy      Q3    _� o1     w     S �     6� kI o1     @    ga     S  #    ga s cy     @    o1     v  �\    cy     ��     V     w ~�     
    z�  \ ��      w    ~� ��     :   lut_out �� W�     p   � ��    w ��     W�     @     �Y      Q3    �q �A     �     S  #     6� �) �Y     @    �A     v  �\    �Y     ��     V     � ��     
    ��  \ ��      �    �� ��     :   
in_bus_pad �� W�     p   � ��    � ��     W�     @     �i      Q3    �� �!     ��     S �     6� �9 �!     @    �Q     S  #    �Q �	 �i     @    �!     v  �\    �i     �y     V     �� ��     
    ��  \ ة      ��    �� �y     :   or_tmp �y W�     p   � ܑ    �� ة     W�     @     �I      Q3    �a �1     �     S  #     *� � �I     @    �1     q    �� �I Y     @     ��      Q3    �� ��     �     S  #     *� � ��     @    ��     q     FR �� q     � �         Y        �     q �             W�     @     )      �    A "�     6i     S �     6� � "�     @         S  #     &� )     @    "�         � 0i 2�        � 4Q 6i )    �i �	 �� .�     3   � 89 *� W�     :   i 6i *�     !   � 2�     ) ) .�     >    �� 2� �i     S ��    2� B! F	     @    >9     >    �� >9 ]y     S ��    2� M� Q�     @    I�     S �c    I� U� Y�     @    Q�     >    �� Q� ]y     S ,    � �� t�     S ��    2� eI i1     @    aa     S �c    aa m q     @    i1     >    �� i1 t�     S ,    �� �� �Y     S ��    2� |� ��     @    x�     S �c    x� �� �q     @    ��     >    �� �� �Y     S ,    �� �� �A     S �\    �� �)     � �A         �i     Y    � F	         Y    \ Y�         Y    � ]y         Y    \ q         Y    � t�         Y    \ �q         Y    �� �Y            �     �) :Q             *�     S w�    2� �9 �!     @     �Q         �I        �1 �Q    �a �	     ;   � � �! *�     >    ܑ 2� ��     \     FQ �� �a     \     N!  \ �a     \     U�  D �a     >    �� 2� �y     \     ]� ֑ �a        � �I  e�    �� �� ҩ �y     �!     :   
FIRSTMUX_I �1 �!     E   � �I �a �!     :   FIRST � *�     E   � � �	 *�     S 	n    2� �� ��     @     ��         (�        ,� ��    $� ��     ;   � 0i �� *�     >    ܑ 2� q     \     FQ � $�     S  #    2� A )     @    	Y     >    ܑ 	Y      \     N! ) $�     \     U�  D $�     >    �� 2�  �     \     ]� � $�        � (�  e�    q  �  �     ��     :   	RESTMUX_I ,� ��     E   � (� $� ��     :   REST 4Q *�     E   � 0i �� *�     :   OR_GENERATE <! W�     E   � 89 .� W�     S �     6� C� G�     @    @	     S  #    @	 K� O�     @    G�     >    ܑ G� S�     � O�         Wy        �     S�  R
             W�     :   MORETHAN4_GEN _I  �     E   � [a [�  �     %     �  �  �  ]�     � g     �   bC:/Xilinx/14.1/ISE_DS/EDK/hw/XilinxProcessorIPLib/pcores/proc_common_v3_00_a/hdl/vhdl/or_muxcy.vhd c1  �                or_muxcy   implementation   proc_common_v3_00_a      or_muxcy   implementation   proc_common_v3_00_a      or_muxcy       proc_common_v3_00_a      standard       std      std_logic_1164       ieee