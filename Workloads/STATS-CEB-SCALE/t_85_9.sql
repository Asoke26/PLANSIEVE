SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 11
AND u.Views >= 221
AND u.Views <= 627

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;