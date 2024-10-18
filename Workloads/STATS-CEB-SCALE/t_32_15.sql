SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 125.0
AND u.Reputation >= 1076
AND u.Views >= 227
AND u.Views <= 456
AND u.UpVotes = 44
AND v.CreationDate >= 811
AND v.CreationDate <= 1427
AND u.CreationDate >= 474
AND u.CreationDate <= 1535

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;