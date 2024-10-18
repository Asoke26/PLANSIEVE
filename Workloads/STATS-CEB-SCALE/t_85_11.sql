SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 23
AND u.Views >= 1
AND u.Views <= 655

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;