SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 14
AND u.Views >= 7
AND u.Views <= 434

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;