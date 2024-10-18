SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE v.BountyAmount >= 0.0
AND u.Reputation >= 49
AND u.Views >= 57
AND u.Views <= 776
AND u.UpVotes = 154
AND v.CreationDate >= 745
AND v.CreationDate <= 1168
AND u.CreationDate >= 123
AND u.CreationDate <= 1192

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;