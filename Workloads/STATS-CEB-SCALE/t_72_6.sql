SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 13
AND p.ViewCount >= 2385.0
AND p.CommentCount <= 26
AND v.VoteTypeId = 11
AND c.CreationDate >= 1091
AND ph.CreationDate >= 956
AND ph.CreationDate <= 1462

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;