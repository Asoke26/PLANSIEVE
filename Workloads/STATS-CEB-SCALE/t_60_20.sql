SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 59
AND p.Score <= 192
AND p.FavoriteCount >= 26.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 5
AND u.Reputation >= 1151
AND c.CreationDate >= 133
AND c.CreationDate <= 999
AND pl.CreationDate >= 868
AND v.CreationDate <= 848
AND u.CreationDate >= 104
AND u.CreationDate <= 862

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;