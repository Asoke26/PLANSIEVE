SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 5
AND p.ViewCount >= 963.0
AND p.CommentCount <= 34
AND v.VoteTypeId = 16
AND c.CreationDate >= 1072
AND ph.CreationDate >= 527
AND ph.CreationDate <= 615

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;