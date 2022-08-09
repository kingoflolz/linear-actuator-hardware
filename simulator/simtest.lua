newdocument(0)
mi_probdef(0, "millimeters", "planar", 1E-8)
mi_addboundprop("dirichlet", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
mi_addnode(0.0, 1.3)
mi_addnode(10.0, 1.3)
mi_addsegment(0.0, 1.3, 10.0, 1.3)
mi_selectsegment(5.0, 1.3)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(0.0, 2.88)
mi_addsegment(0.0, 2.88, 0.0, 1.3)
mi_selectsegment(0.0, 2.09)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10.0, 2.88)
mi_addsegment(10.0, 2.88, 0.0, 2.88)
mi_selectsegment(5.0, 2.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10.0, 1.3, 10.0, 2.88)
mi_selectsegment(10.0, 2.09)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_getmaterial("N40")
mi_clearselected()
mi_addblocklabel(5.0, 2.09)
mi_selectlabel(5.0, 2.09)
mi_setblockprop("N40", 1, 0, "", 90, 0, 1)
mi_clearselected()
mi_addnode(0.0, -1.3)
mi_addnode(10.0, -1.3)
mi_addsegment(0.0, -1.3, 10.0, -1.3)
mi_selectsegment(5.0, -1.3)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(0.0, -2.88)
mi_addsegment(0.0, -2.88, 0.0, -1.3)
mi_selectsegment(0.0, -2.09)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10.0, -2.88)
mi_addsegment(10.0, -2.88, 0.0, -2.88)
mi_selectsegment(5.0, -2.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10.0, -1.3, 10.0, -2.88)
mi_selectsegment(10.0, -2.09)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_clearselected()
mi_addblocklabel(5.0, -2.09)
mi_selectlabel(5.0, -2.09)
mi_setblockprop("N40", 1, 0, "", 90, 0, 1)
mi_clearselected()
mi_addsegment(0, 2.88, 10, 2.88)
mi_selectsegment(5.0, 2.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(0, 5.88)
mi_addsegment(0, 5.88, 0, 2.88)
mi_selectsegment(0.0, 4.38)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10, 5.88)
mi_addsegment(10, 5.88, 0, 5.88)
mi_selectsegment(5.0, 5.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, 2.88, 10, 5.88)
mi_selectsegment(10.0, 4.38)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_getmaterial("1018 Steel")
mi_clearselected()
mi_addblocklabel(5.0, 4.38)
mi_selectlabel(5.0, 4.38)
mi_setblockprop("1018 Steel", 1, 0, "", 0, 0, 1)
mi_clearselected()
mi_addsegment(0, -2.88, 10, -2.88)
mi_selectsegment(5.0, -2.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(0, -5.88)
mi_addsegment(0, -5.88, 0, -2.88)
mi_selectsegment(0.0, -4.38)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10, -5.88)
mi_addsegment(10, -5.88, 0, -5.88)
mi_selectsegment(5.0, -5.88)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, -2.88, 10, -5.88)
mi_selectsegment(10.0, -4.38)
mi_setsegmentprop("", 0, 0, 0, 0)
mi_clearselected()
mi_clearselected()
mi_addblocklabel(5.0, -4.38)
mi_selectlabel(5.0, -4.38)
mi_setblockprop("1018 Steel", 1, 0, "", 0, 0, 1)
mi_clearselected()
mi_addboundprop("apb1", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addnode(0, 10.879999999999999)
mi_addsegment(0, 10.879999999999999, 0, 5.88)
mi_selectsegment(0.0, 8.379999999999999)
mi_setsegmentprop("apb1", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10, 10.879999999999999)
mi_addsegment(10, 10.879999999999999, 10, 5.88)
mi_selectsegment(10.0, 8.379999999999999)
mi_setsegmentprop("apb1", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb2", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, 5.88, 0, 2.88)
mi_selectsegment(0.0, 4.38)
mi_setsegmentprop("apb2", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, 5.88, 10, 2.88)
mi_selectsegment(10.0, 4.38)
mi_setsegmentprop("apb2", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb3", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, 2.88, 0, 1.3)
mi_selectsegment(0.0, 2.09)
mi_setsegmentprop("apb3", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, 2.88, 10, 1.3)
mi_selectsegment(10.0, 2.09)
mi_setsegmentprop("apb3", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb4", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addnode(0, -10.879999999999999)
mi_addsegment(0, -10.879999999999999, 0, -5.88)
mi_selectsegment(0.0, -8.379999999999999)
mi_setsegmentprop("apb4", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10, -10.879999999999999)
mi_addsegment(10, -10.879999999999999, 10, -5.88)
mi_selectsegment(10.0, -8.379999999999999)
mi_setsegmentprop("apb4", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb5", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, -5.88, 0, -2.88)
mi_selectsegment(0.0, -4.38)
mi_setsegmentprop("apb5", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, -5.88, 10, -2.88)
mi_selectsegment(10.0, -4.38)
mi_setsegmentprop("apb5", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb6", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, -2.88, 0, -1.3)
mi_selectsegment(0.0, -2.09)
mi_setsegmentprop("apb6", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, -2.88, 10, -1.3)
mi_selectsegment(10.0, -2.09)
mi_setsegmentprop("apb6", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(0, 10.879999999999999, 10, 10.879999999999999)
mi_selectsegment(5.0, 10.879999999999999)
mi_setsegmentprop("dirichlet", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(0, -10.879999999999999, 10, -10.879999999999999)
mi_selectsegment(5.0, -10.879999999999999)
mi_setsegmentprop("dirichlet", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb7", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addnode(0, 0.8350000000000001)
mi_addnode(0, -0.8350000000000001)
mi_addsegment(0, 0.8350000000000001, 0, -0.8350000000000001)
mi_selectsegment(0.0, 0.0)
mi_setsegmentprop("apb7", 0, 0, 0, 0)
mi_clearselected()
mi_addnode(10, 0.8350000000000001)
mi_addnode(10, -0.8350000000000001)
mi_addsegment(10, 0.8350000000000001, 10, -0.8350000000000001)
mi_selectsegment(10.0, 0.0)
mi_setsegmentprop("apb7", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb8", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, 0.8350000000000001, 0, 1.3)
mi_selectsegment(0.0, 1.0675000000000001)
mi_setsegmentprop("apb8", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, 0.8350000000000001, 10, 1.3)
mi_selectsegment(10.0, 1.0675000000000001)
mi_setsegmentprop("apb8", 0, 0, 0, 0)
mi_clearselected()
mi_addboundprop("apb9", 0, 0, 0, 0, 0, 0, 0, 0, 5, 0, 0)
mi_addsegment(0, -0.8350000000000001, 0, -1.3)
mi_selectsegment(0.0, -1.0675000000000001)
mi_setsegmentprop("apb9", 0, 0, 0, 0)
mi_clearselected()
mi_addsegment(10, -0.8350000000000001, 10, -1.3)
mi_selectsegment(10.0, -1.0675000000000001)
mi_setsegmentprop("apb9", 0, 0, 0, 0)
mi_clearselected()
mi_getmaterial("Air")
mi_clearselected()
mi_addblocklabel(5.0, 0)
mi_selectlabel(5.0, 0)
mi_setblockprop("Air", 1, 0, "", 0, 0, 1)
mi_clearselected()
mi_clearselected()
mi_addblocklabel(5.0, 8.379999999999999)
mi_selectlabel(5.0, 8.379999999999999)
mi_setblockprop("Air", 1, 0, "", 0, 0, 1)
mi_clearselected()
mi_clearselected()
mi_addblocklabel(5.0, -8.379999999999999)
mi_selectlabel(5.0, -8.379999999999999)
mi_setblockprop("Air", 1, 0, "", 0, 0, 1)
mi_clearselected()
mi_addnode(0.10000000000000009, 0.8)
mi_addnode(3.2333333333333334, 0.8)
mi_addsegment(0.10000000000000009, 0.8, 3.2333333333333334, 0.8)
mi_selectsegment(1.6666666666666667, 0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(0.10000000000000009, 0.8350000000000001)
mi_addsegment(0.10000000000000009, 0.8350000000000001, 0.10000000000000009, 0.8)
mi_selectsegment(0.10000000000000009, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(3.2333333333333334, 0.8350000000000001)
mi_addsegment(3.2333333333333334, 0.8350000000000001, 0.10000000000000009, 0.8350000000000001)
mi_selectsegment(1.6666666666666667, 0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(3.2333333333333334, 0.8, 3.2333333333333334, 0.8350000000000001)
mi_selectsegment(3.2333333333333334, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_getmaterial("Copper")
mi_addcircprop("circuit1", 4.999999999999999, 1)
mi_clearselected()
mi_addblocklabel(1.6666666666666667, 0.8175000000000001)
mi_selectlabel(1.6666666666666667, 0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit1", 0, 0, 1)
mi_clearselected()
mi_addnode(0.10000000000000009, -0.8)
mi_addnode(3.2333333333333334, -0.8)
mi_addsegment(0.10000000000000009, -0.8, 3.2333333333333334, -0.8)
mi_selectsegment(1.6666666666666667, -0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(0.10000000000000009, -0.8350000000000001)
mi_addsegment(0.10000000000000009, -0.8350000000000001, 0.10000000000000009, -0.8)
mi_selectsegment(0.10000000000000009, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(3.2333333333333334, -0.8350000000000001)
mi_addsegment(3.2333333333333334, -0.8350000000000001, 0.10000000000000009, -0.8350000000000001)
mi_selectsegment(1.6666666666666667, -0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(3.2333333333333334, -0.8, 3.2333333333333334, -0.8350000000000001)
mi_selectsegment(3.2333333333333334, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addcircprop("circuit2", 4.999999999999999, 1)
mi_clearselected()
mi_addblocklabel(1.6666666666666667, -0.8175000000000001)
mi_selectlabel(1.6666666666666667, -0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit2", 0, 0, 1)
mi_clearselected()
mi_addnode(3.4333333333333336, 0.8)
mi_addnode(6.566666666666666, 0.8)
mi_addsegment(3.4333333333333336, 0.8, 6.566666666666666, 0.8)
mi_selectsegment(5.0, 0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(3.4333333333333336, 0.8350000000000001)
mi_addsegment(3.4333333333333336, 0.8350000000000001, 3.4333333333333336, 0.8)
mi_selectsegment(3.4333333333333336, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(6.566666666666666, 0.8350000000000001)
mi_addsegment(6.566666666666666, 0.8350000000000001, 3.4333333333333336, 0.8350000000000001)
mi_selectsegment(5.0, 0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(6.566666666666666, 0.8, 6.566666666666666, 0.8350000000000001)
mi_selectsegment(6.566666666666666, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addcircprop("circuit3", 10.0, 1)
mi_clearselected()
mi_addblocklabel(5.0, 0.8175000000000001)
mi_selectlabel(5.0, 0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit3", 0, 0, 1)
mi_clearselected()
mi_addnode(3.4333333333333336, -0.8)
mi_addnode(6.566666666666666, -0.8)
mi_addsegment(3.4333333333333336, -0.8, 6.566666666666666, -0.8)
mi_selectsegment(5.0, -0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(3.4333333333333336, -0.8350000000000001)
mi_addsegment(3.4333333333333336, -0.8350000000000001, 3.4333333333333336, -0.8)
mi_selectsegment(3.4333333333333336, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(6.566666666666666, -0.8350000000000001)
mi_addsegment(6.566666666666666, -0.8350000000000001, 3.4333333333333336, -0.8350000000000001)
mi_selectsegment(5.0, -0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(6.566666666666666, -0.8, 6.566666666666666, -0.8350000000000001)
mi_selectsegment(6.566666666666666, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addcircprop("circuit4", 10.0, 1)
mi_clearselected()
mi_addblocklabel(5.0, -0.8175000000000001)
mi_selectlabel(5.0, -0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit4", 0, 0, 1)
mi_clearselected()
mi_addnode(6.7666666666666675, 0.8)
mi_addnode(9.9, 0.8)
mi_addsegment(6.7666666666666675, 0.8, 9.9, 0.8)
mi_selectsegment(8.333333333333334, 0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(6.7666666666666675, 0.8350000000000001)
mi_addsegment(6.7666666666666675, 0.8350000000000001, 6.7666666666666675, 0.8)
mi_selectsegment(6.7666666666666675, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(9.9, 0.8350000000000001)
mi_addsegment(9.9, 0.8350000000000001, 6.7666666666666675, 0.8350000000000001)
mi_selectsegment(8.333333333333334, 0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(9.9, 0.8, 9.9, 0.8350000000000001)
mi_selectsegment(9.9, 0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addcircprop("circuit5", 4.999999999999999, 1)
mi_clearselected()
mi_addblocklabel(8.333333333333334, 0.8175000000000001)
mi_selectlabel(8.333333333333334, 0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit5", 0, 0, 1)
mi_clearselected()
mi_addnode(6.7666666666666675, -0.8)
mi_addnode(9.9, -0.8)
mi_addsegment(6.7666666666666675, -0.8, 9.9, -0.8)
mi_selectsegment(8.333333333333334, -0.8)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(6.7666666666666675, -0.8350000000000001)
mi_addsegment(6.7666666666666675, -0.8350000000000001, 6.7666666666666675, -0.8)
mi_selectsegment(6.7666666666666675, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addnode(9.9, -0.8350000000000001)
mi_addsegment(9.9, -0.8350000000000001, 6.7666666666666675, -0.8350000000000001)
mi_selectsegment(8.333333333333334, -0.8350000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addsegment(9.9, -0.8, 9.9, -0.8350000000000001)
mi_selectsegment(9.9, -0.8175000000000001)
mi_setsegmentprop("", 0, 0, 0, 1)
mi_clearselected()
mi_addcircprop("circuit6", 4.999999999999999, 1)
mi_clearselected()
mi_addblocklabel(8.333333333333334, -0.8175000000000001)
mi_selectlabel(8.333333333333334, -0.8175000000000001)
mi_setblockprop("Copper", 1, 0, "circuit6", 0, 0, 1)
mi_clearselected()
mi_saveas("Untitledtest.fem")
mi_analyse(1)
mi_loadsolution()
mo_zoom(0.0, -10.879999999999999, 10.0, 10.879999999999999)
mo_showdensityplot(1,0,2,0,"bmag")
mo_showcontourplot(19,-0.01,0.01,real)
mo_savebitmap("idtestn0.bmp")
mo_hidedensityplot()
mo_hidecontourplot()
mo_seteditmode("area")
mo_selectblock(1.6666666666666667, 0.8175)
mo_selectblock(1.6666666666666667, -0.8175)
mo_selectblock(5.0, 0.8175)
mo_selectblock(5.0, -0.8175)
mo_selectblock(8.333333333333334, 0.8175)
mo_selectblock(8.333333333333334, -0.8175)
force = mo_blockintegral(18)
mo_close()
f = openfile("femmoutfiletest", "a+")
write(f, force)
write(f, "\n")
flush()
closefile(f)
quit()