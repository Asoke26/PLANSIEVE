SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 69
AND p.ViewCount >= 3228.0
AND p.CommentCount <= 41
AND v.VoteTypeId = 5
AND c.CreationDate >= 284
AND ph.CreationDate >= 1010
AND ph.CreationDate <= 1173

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;