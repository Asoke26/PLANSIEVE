SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 0
AND u.Reputation >= 73
AND u.Reputation <= 646
AND u.Views >= 24
AND ph.CreationDate >= 415
AND ph.CreationDate <= 616

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;