SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 49
AND p.Score <= 73
AND p.FavoriteCount >= 23.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 15
AND u.Reputation >= 259
AND c.CreationDate >= 229
AND c.CreationDate <= 1263
AND pl.CreationDate >= 947
AND v.CreationDate <= 1316
AND u.CreationDate >= 400
AND u.CreationDate <= 1265

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;