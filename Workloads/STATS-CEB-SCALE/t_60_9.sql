SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 44
AND p.Score <= 52
AND p.FavoriteCount >= 0.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 16
AND u.Reputation >= 1588
AND c.CreationDate >= 131
AND c.CreationDate <= 767
AND pl.CreationDate >= 685
AND v.CreationDate <= 1346
AND u.CreationDate >= 94
AND u.CreationDate <= 903

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;