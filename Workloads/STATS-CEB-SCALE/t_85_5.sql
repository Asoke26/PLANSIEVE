SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 3
AND u.Views >= 147
AND u.Views <= 5927

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;