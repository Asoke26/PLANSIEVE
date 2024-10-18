SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 25.0
AND u.Reputation >= 28
AND u.Views >= 0
AND u.Views <= 96
AND u.UpVotes = 36
AND v.CreationDate >= 166
AND v.CreationDate <= 1200
AND u.CreationDate >= 351
AND u.CreationDate <= 1454

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;