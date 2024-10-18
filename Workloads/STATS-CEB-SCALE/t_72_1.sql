SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 164
AND p.ViewCount >= 5523.0
AND p.CommentCount <= 24
AND v.VoteTypeId = 8
AND c.CreationDate >= 762
AND ph.CreationDate >= 681
AND ph.CreationDate <= 1242

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;