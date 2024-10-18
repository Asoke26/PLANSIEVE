SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 4
AND u.Views >= 191
AND u.Views <= 578

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;