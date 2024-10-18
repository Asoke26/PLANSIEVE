SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 8
AND u.Reputation >= 494
AND u.Reputation <= 6431
AND u.Views >= 1089
AND ph.CreationDate >= 1345
AND ph.CreationDate <= 1424

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;