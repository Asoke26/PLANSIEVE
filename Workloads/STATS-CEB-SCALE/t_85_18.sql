SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 9
AND u.Views >= 173
AND u.Views <= 445

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;