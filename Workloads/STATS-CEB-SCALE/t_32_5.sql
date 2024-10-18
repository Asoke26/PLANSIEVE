SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 25.0
AND u.Reputation >= 223
AND u.Views >= 40
AND u.Views <= 870
AND u.UpVotes = 9
AND v.CreationDate >= 280
AND v.CreationDate <= 1371
AND u.CreationDate >= 334
AND u.CreationDate <= 835

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;