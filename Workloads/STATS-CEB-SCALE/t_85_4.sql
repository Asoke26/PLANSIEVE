SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 10
AND u.Views >= 65
AND u.Views <= 1088

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;