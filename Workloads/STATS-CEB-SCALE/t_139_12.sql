SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 18
AND p.ViewCount >= 5687.0
AND p.AnswerCount <= 35.0
AND p.CommentCount <= 11
AND p.FavoriteCount >= 8.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 458
AND pl.CreationDate <= 1507
AND v.CreationDate >= 616
AND v.CreationDate <= 1314
AND b.Date >= 341
AND b.Date <= 989

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;