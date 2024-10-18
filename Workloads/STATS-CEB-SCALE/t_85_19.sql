SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 16
AND u.Views >= 272
AND u.Views <= 842

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;