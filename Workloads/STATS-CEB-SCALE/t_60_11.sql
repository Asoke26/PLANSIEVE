SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 6
AND p.Score <= 28
AND p.FavoriteCount >= 3.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND u.Reputation >= 2108
AND c.CreationDate >= 884
AND c.CreationDate <= 911
AND pl.CreationDate >= 423
AND v.CreationDate <= 653
AND u.CreationDate >= 47
AND u.CreationDate <= 152

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;