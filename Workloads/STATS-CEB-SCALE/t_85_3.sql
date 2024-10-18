SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 5
AND u.Views >= 98
AND u.Views <= 385

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;