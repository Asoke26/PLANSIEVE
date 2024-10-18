SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 9
AND u.Views >= 86
AND u.Views <= 103

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;