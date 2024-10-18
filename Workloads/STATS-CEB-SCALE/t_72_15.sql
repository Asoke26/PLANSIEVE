SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= -5
AND p.ViewCount >= 3409.0
AND p.CommentCount <= 45
AND v.VoteTypeId = 8
AND c.CreationDate >= 914
AND ph.CreationDate >= 162
AND ph.CreationDate <= 1150

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;