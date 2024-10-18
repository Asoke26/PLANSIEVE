SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 393
AND u.Views <= 4069
AND u.DownVotes >= 0
AND u.DownVotes <= 412
AND u.UpVotes <= 100
AND c.CreationDate >= 1150
AND c.CreationDate <= 1332
AND ph.CreationDate >= 1176
AND ph.CreationDate <= 1288
AND v.CreationDate >= 515
AND v.CreationDate <= 882

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;