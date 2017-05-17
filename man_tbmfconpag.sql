alter trigger trg_mfconpag_biu inactive;
update mfconpag set tipo='M' where id=61713 and empresa=1 and forn=20415
and doc=57016 and tipo='F' and serie=1
alter trigger trg_mfconpag_biu active;
INSERT INTO MFCONPAG_TBCBOPRO (ID_MFCONPAG, ID_TBCBOPRO)
VALUES (61713, 1010);