SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 540
AND u.Views <= 1286
AND u.DownVotes >= 0
AND u.DownVotes <= 65
AND u.UpVotes <= 1781
AND c.CreationDate >= 812
AND c.CreationDate <= 924
AND ph.CreationDate >= 610
AND ph.CreationDate <= 1435
AND v.CreationDate >= 105
AND v.CreationDate <= 228

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;