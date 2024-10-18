SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 52
AND p.ViewCount >= 3383.0
AND p.CommentCount <= 25
AND v.VoteTypeId = 16
AND c.CreationDate >= 127
AND ph.CreationDate >= 112
AND ph.CreationDate <= 1188

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;