SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 24
AND u.Views >= 137
AND u.Views <= 7357

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;