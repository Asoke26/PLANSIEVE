SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 61
AND p.ViewCount >= 3161.0
AND p.CommentCount <= 45
AND v.VoteTypeId = 16
AND c.CreationDate >= 836
AND ph.CreationDate >= 354
AND ph.CreationDate <= 1218

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;