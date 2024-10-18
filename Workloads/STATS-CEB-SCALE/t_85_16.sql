SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 5
AND u.Views >= 298
AND u.Views <= 1225

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;