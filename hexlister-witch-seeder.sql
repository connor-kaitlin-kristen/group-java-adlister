use hexlister_db;

SET FOREIGN_KEY_CHECKS=0;

TRUNCATE users;
insert into users (password, username, email) values ('$2a$13$7cDRxhAOBV6VOOWi5O7O0Od5Pns43GDf5AR7czY9C13vwLOwpzG9S', 'Queen Beryl', 'sailor@moon.com');
insert into users (password, username, email) values ('$2a$13$4BBRV3r8VwPOwJ/scSpKAe6WlOolqbO5Y2G6wN.5XGT9exKCQ8BpG', 'Della', 'sabrina@tw.com');
insert into users (password, username, email) values ('$2a$13$VqE37TSOZwiPVUqGGxpRMOB55Y9A6YH9OVI/wCmEjIZU7ZYOyKd5S', 'Enchantra', 'sabrina2@tw.com');
insert into users (password, username, email) values ('$2a$13$5nQJLrhQNrLN2KiHh4AXreCt1Zgi0DRoM42eZsOIG2I0wrYY/Zyvy', 'Gailena', 'sabrina3@tw.com');
insert into users (password, username, email) values ('$2a$13$YYhthgPsLg5ADRAOFKDj1uW0T7ypHy3Pfp.9F1DM7vjeLFS46WEiG', 'Mad Hettie', 'sandman@gaiman.com');
insert into users (password, username, email) values ('$2a$13$uy7lQCgmkUAra1fcLb3CN.HqEPNVEFQXTQZWCsVw5ANX5M.b2vXpi', 'Morgaine le Fay', 'ihatemerlin@avalon.com');
insert into users (password, username, email) values ('$2a$13$PDd8gnrEHKohHskc2GqUQ.QJ2gtP59zuInSf2gOicuEMVwPBfx3Mu', 'Salem', 'blackcatzrule@tw.com');
insert into users (password, username, email) values ('$2a$13$u1qIfkfrvPO9rA3pYESf2eZBk7kxipPtzRuP.j3eNYaN.EuE7O2XO', 'Thessaly', 'sandman2@gaiman.com');
insert into users (password, username, email) values ('$2a$13$a4s/BeNUF8OEcCYJWZ/JIudpG8BfkzNCSJuD8HrkxezXgBAd/4eXu', 'Agnes Nutter', 'goodomens@gaiman.com');
insert into users (password, username, email) values ('$2a$13$JeHLtT6bfvSrersdibhceOS7LChO6cZbGKToC8p8l..kIbXR2MRNG', 'Other Mother', 'buttoneyes@coraline.com');
insert into users (password, username, email) values ('$2a$13$PVbdmwlZEB5c285vfXMTqemktUcHjvFw7screFSHQRa4CZ25JueEG', 'Rowena Ravenclaw', 'sparklydiadem@hp.com');
insert into users (password, username, email) values ('$2a$13$YGskhdW1Y57td9IQziIL1.z5hriPGVTD4WVuo4MOEBZ0f/RkNMaKu', 'Ruta Skadi', 'cloudpine@hdm.com');
insert into users (password, username, email) values ('$2a$13$pF6SVAmGn.ergR1WsBPSOO/2fcBFKSh.ZXEW6iitlT1XnvlBnyYS2', 'Nymphadora Tonks', 'mynameistonks@hp.com');
insert into users (password, username, email) values ('$2a$13$6WHlFPnZxS.AA.SQ33zI4OwugtVsWZ187czauKrI.UyrOWyhmqmji', 'Elphaba', 'greengirl@wicked.com');
insert into users (password, username, email) values ('$2a$13$fGU3.RJcRamQCQiSRVa95.50rBC7F9lQjvzjv9xtkNHhlYu.bgexS', 'Mirri Maz Dur', 'ikilleddrogo@got.com');
insert into users (password, username, email) values ('$2a$13$toQiH8GqUxHdBHxfyTOy9ezJ.Yyybq2/zKVKzGH0pQ2nHnPJAe.o.', 'Piper Halliwell', 'powerofthree@charmed.com');
insert into users (password, username, email) values ('$2a$13$6BSoZz09NY.KO5/9pbEuc.Ev45Xdt1ROI28sWZvZeT/UH.wIcb1BO', 'Jadis', 'whitewitchofnarnia@cslewis.com');
insert into users (password, username, email) values ('$2a$13$ynjAe4lDsEgk/L.XaM9b/uU98kL.v1GwWLgm3tvS1ju//JYtxnLMe', 'Melisandre', 'smokebaby@redpriestess.com');
insert into users (password, username, email) values ('$2a$13$RtmdfscHdQO6nM/KWLVsBuhOsf2IoQ9uMNe50AbbPxLuv.a3AxZ5O', 'Madam Mim', 'madmadmadmadmadammim@ihatesunshine.com');
insert into users (password, username, email) values ('$2a$13$eyCYO1N9kHG9ZENqW7kjBOOnd/XiESgdhQUMmJB2KKFE3GpCkTCA.', 'Baba Yaga', 'chickenleghut@bonylegged.com');

SET FOREIGN_KEY_CHECKS=1;