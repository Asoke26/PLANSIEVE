SELECT COUNT(*)
 FROM comments c,
votes v,
users u,
posts p
WHERE c.Score=0
AND u.Views>=0
AND u.Views<=74

AND c.PostId = p.Id
AND u.Id = c.UserId
AND v.PostId = p.Id;