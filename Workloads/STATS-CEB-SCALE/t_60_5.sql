SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 14
AND p.Score <= 115
AND p.FavoriteCount >= 46.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 5
AND u.Reputation >= 41
AND c.CreationDate >= 395
AND c.CreationDate <= 1147
AND pl.CreationDate >= 766
AND v.CreationDate <= 970
AND u.CreationDate >= 205
AND u.CreationDate <= 773

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;