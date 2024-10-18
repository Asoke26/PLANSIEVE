SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 10
AND p.Score <= 115
AND p.FavoriteCount >= 6.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 5
AND u.Reputation >= 2103
AND c.CreationDate >= 148
AND c.CreationDate <= 1049
AND pl.CreationDate >= 1515
AND v.CreationDate <= 450
AND u.CreationDate >= 40
AND u.CreationDate <= 414

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;