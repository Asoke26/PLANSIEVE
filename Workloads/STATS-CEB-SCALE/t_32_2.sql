SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 50.0
AND u.Reputation >= 450
AND u.Views >= 90
AND u.Views <= 211
AND u.UpVotes = 32
AND v.CreationDate >= 70
AND v.CreationDate <= 1289
AND u.CreationDate >= 285
AND u.CreationDate <= 1534

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;