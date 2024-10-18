SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 14
AND p.ViewCount >= 1403.0
AND p.AnswerCount <= 28.0
AND p.CommentCount <= 20
AND p.FavoriteCount >= 67.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 437
AND pl.CreationDate <= 1154
AND v.CreationDate >= 734
AND v.CreationDate <= 1003
AND b.Date >= 1053
AND b.Date <= 1536

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;