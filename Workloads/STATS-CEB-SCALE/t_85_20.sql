SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 30
AND u.Views >= 189
AND u.Views <= 456

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;