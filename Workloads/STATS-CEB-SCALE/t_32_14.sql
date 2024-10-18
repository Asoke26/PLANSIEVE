SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 25.0
AND u.Reputation >= 1796
AND u.Views >= 168
AND u.Views <= 1101
AND u.UpVotes = 1230
AND v.CreationDate >= 161
AND v.CreationDate <= 1435
AND u.CreationDate >= 456
AND u.CreationDate <= 1448

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;