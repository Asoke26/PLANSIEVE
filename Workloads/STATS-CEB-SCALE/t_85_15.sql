SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 15
AND u.Views >= 46
AND u.Views <= 141

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;