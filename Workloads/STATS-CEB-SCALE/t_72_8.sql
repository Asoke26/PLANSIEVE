SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score >= 36
AND p.ViewCount >= 3283.0
AND p.CommentCount <= 24
AND v.VoteTypeId = 8
AND c.CreationDate >= 1183
AND ph.CreationDate >= 828
AND ph.CreationDate <= 1441

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;