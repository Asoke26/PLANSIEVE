SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 150.0
AND u.Reputation >= 599
AND u.Views >= 130
AND u.Views <= 653
AND u.UpVotes = 36
AND v.CreationDate >= 153
AND v.CreationDate <= 1274
AND u.CreationDate >= 298
AND u.CreationDate <= 1290

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;