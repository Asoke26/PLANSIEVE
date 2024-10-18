SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 26
AND u.Reputation >= 1076
AND u.Reputation <= 3359
AND u.Views >= 151
AND ph.CreationDate >= 282
AND ph.CreationDate <= 554

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;