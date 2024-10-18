SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 125
AND u.Views <= 230
AND u.DownVotes >= 2
AND u.DownVotes <= 22
AND u.UpVotes <= 228
AND c.CreationDate >= 48
AND c.CreationDate <= 980
AND ph.CreationDate >= 859
AND ph.CreationDate <= 1544
AND v.CreationDate >= 467
AND v.CreationDate <= 616

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;