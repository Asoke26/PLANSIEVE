SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 18
AND p.Score <= 81
AND p.FavoriteCount >= 20.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND u.Reputation >= 201
AND c.CreationDate >= 142
AND c.CreationDate <= 1078
AND pl.CreationDate >= 487
AND v.CreationDate <= 449
AND u.CreationDate >= 174
AND u.CreationDate <= 1432

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;