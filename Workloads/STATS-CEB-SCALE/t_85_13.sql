SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 2
AND u.Views >= 241
AND u.Views <= 783

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;