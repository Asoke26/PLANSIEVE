SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 75.0
AND u.Reputation >= 589
AND u.Views >= 120
AND u.Views <= 1660
AND u.UpVotes = 223
AND v.CreationDate >= 497
AND v.CreationDate <= 1523
AND u.CreationDate >= 36
AND u.CreationDate <= 1436

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;