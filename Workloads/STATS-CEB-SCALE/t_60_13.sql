SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 6
AND p.Score <= 192
AND p.FavoriteCount >= 11.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND u.Reputation >= 832
AND c.CreationDate >= 235
AND c.CreationDate <= 711
AND pl.CreationDate >= 946
AND v.CreationDate <= 1017
AND u.CreationDate >= 676
AND u.CreationDate <= 1368

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;