SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 30
AND p.ViewCount >= 12242.0
AND p.AnswerCount <= 27.0
AND p.CommentCount <= 31
AND p.FavoriteCount >= 14.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 88
AND pl.CreationDate <= 959
AND v.CreationDate >= 815
AND v.CreationDate <= 1425
AND b.Date >= 1091
AND b.Date <= 1517

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;