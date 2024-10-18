SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 3
AND p.Score <= 124
AND p.FavoriteCount >= 1.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 3
AND u.Reputation >= 440
AND c.CreationDate >= 65
AND c.CreationDate <= 102
AND pl.CreationDate >= 202
AND v.CreationDate <= 1079
AND u.CreationDate >= 43
AND u.CreationDate <= 1493

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;