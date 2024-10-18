SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 100.0
AND u.Reputation >= 199
AND u.Views >= 57
AND u.Views <= 5529
AND u.UpVotes = 53
AND v.CreationDate >= 394
AND v.CreationDate <= 1451
AND u.CreationDate >= 440
AND u.CreationDate <= 842

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;