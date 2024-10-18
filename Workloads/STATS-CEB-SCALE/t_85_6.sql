SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score = 1
AND u.Views >= 168
AND u.Views <= 5680

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;