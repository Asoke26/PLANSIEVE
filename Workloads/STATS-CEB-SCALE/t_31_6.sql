SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 30
AND u.Views <= 378
AND u.DownVotes >= 8
AND u.DownVotes <= 65
AND u.UpVotes <= 136
AND c.CreationDate >= 488
AND c.CreationDate <= 873
AND ph.CreationDate >= 46
AND ph.CreationDate <= 1453
AND v.CreationDate >= 281
AND v.CreationDate <= 311

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;